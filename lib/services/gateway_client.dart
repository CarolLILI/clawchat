import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/io.dart';

import '../models/message.dart';
import '../models/server_config.dart';
import 'device_identity.dart';

export 'device_identity.dart';

enum GatewayConnectionState {
  disconnected,
  connecting,
  connected,
  error,
}

class ConnectionResult {
  final bool success;
  final String? error;
  ConnectionResult({required this.success, this.error});
}

class GatewayClient {
  final ServerConfig config;
  WebSocketChannel? _channel;
  StreamSubscription? _subscription;

  final _messageController = StreamController<Message>.broadcast();
  final _stateController =
      StreamController<GatewayConnectionState>.broadcast();

  Stream<Message> get messageStream => _messageController.stream;
  Stream<GatewayConnectionState> get stateStream => _stateController.stream;

  GatewayConnectionState _currentState = GatewayConnectionState.disconnected;
  GatewayConnectionState get currentState => _currentState;

  String? _sessionId;
  String get sessionId => _sessionId ?? (_sessionId = _generateSessionId());

  String? _connectNonce;
  String? _connectRequestId;
  DeviceIdentity? _deviceIdentity;
  bool _handshakeSent = false;
  Timer? _connectDelayTimer;

  GatewayClient(this.config);

  String? _lastError;
  String? get lastError => _lastError;

  Future<ConnectionResult> _checkReachability() async {
    try {
      print('[ClawChat] Checking reachability: ${config.host}:${config.port}');
      final socket = await Socket.connect(
        config.host,
        config.port,
        timeout: const Duration(seconds: 5),
      );
      await socket.close();
      print('[ClawChat] Server is reachable');
      return ConnectionResult(success: true);
    } on SocketException catch (e) {
      final msg = '无法连接到服务器 ${config.host}:${config.port}\n'
          '请检查：\n'
          '• 服务器地址和端口是否正确\n'
          '• 设备是否与服务器在同一网络\n'
          '• 服务器是否已启动\n'
          '(${e.message})';
      return ConnectionResult(success: false, error: msg);
    } on TimeoutException {
      final msg = '连接服务器超时 ${config.host}:${config.port}\n'
          '请检查：\n'
          '• 服务器地址是否正确\n'
          '• 是否存在防火墙限制\n'
          '• 设备网络是否正常';
      return ConnectionResult(success: false, error: msg);
    } catch (e) {
      return ConnectionResult(success: false, error: '网络检查失败: $e');
    }
  }

  Future<ConnectionResult> connect() async {
    if (_currentState == GatewayConnectionState.connecting ||
        _currentState == GatewayConnectionState.connected) {
      return ConnectionResult(
          success: _currentState == GatewayConnectionState.connected);
    }

    await _cleanup();
    _lastError = null;

    _updateState(GatewayConnectionState.connecting);
    _handshakeSent = false;
    _connectNonce = null;
    _connectRequestId = null;

    final reachResult = await _checkReachability();
    if (!reachResult.success) {
      _lastError = reachResult.error;
      _updateState(GatewayConnectionState.error);
      return reachResult;
    }

    _deviceIdentity = await DeviceIdentityManager.getOrCreate();
    print('[ClawChat] Using device: ${_deviceIdentity!.deviceId}');

    try {
      print('[ClawChat] Connecting WebSocket to: ${config.wsUrl}');

      _channel = IOWebSocketChannel.connect(
        config.wsUrl,
        pingInterval: const Duration(seconds: 30),
      );

      await _channel!.ready.timeout(
        const Duration(seconds: 8),
        onTimeout: () {
          throw TimeoutException(
              'WebSocket 握手超时，服务器未响应 WebSocket 升级请求');
        },
      );
      print('[ClawChat] WebSocket connected');

      final completer = Completer<ConnectionResult>();

      _subscription = _channel!.stream.listen(
        (data) => _handleMessage(data, completer),
        onError: (error) {
          print('[ClawChat] WebSocket error: $error');
          _lastError = 'WebSocket 连接错误: $error';
          _updateState(GatewayConnectionState.error);
          if (!completer.isCompleted) {
            completer.complete(
                ConnectionResult(success: false, error: _lastError));
          }
        },
        onDone: () {
          print('[ClawChat] WebSocket closed');
          if (_currentState != GatewayConnectionState.connected) {
            _updateState(GatewayConnectionState.disconnected);
          }
          if (!completer.isCompleted) {
            final reason = _channel?.closeReason;
            final code = _channel?.closeCode;
            final msg = '服务器关闭了连接'
                '${code != null ? ' (code: $code)' : ''}'
                '${reason != null && reason.isNotEmpty ? ': $reason' : ''}';
            completer.complete(ConnectionResult(success: false, error: msg));
          }
        },
      );

      // 后备定时器：如果 750ms 内没有收到 connect.challenge，也主动发送握手
      // 这与官方客户端行为一致
      _connectDelayTimer = Timer(const Duration(milliseconds: 750), () {
        if (!_handshakeSent) {
          print('[ClawChat] No challenge received, sending connect anyway');
          _sendConnectHandshake();
        }
      });

      Timer(const Duration(seconds: 10), () {
        if (!completer.isCompleted) {
          _lastError = 'Gateway 协议握手超时\n'
              'WebSocket 已连接，但服务器未完成认证握手。\n'
              '请检查：\n'
              '• Auth Token 是否正确\n'
              '• 服务器 Gateway 版本是否兼容';
          print('[ClawChat] Handshake timeout');
          _updateState(GatewayConnectionState.error);
          completer.complete(
              ConnectionResult(success: false, error: _lastError));
        }
      });

      return await completer.future;
    } on TimeoutException catch (e) {
      _lastError = e.message ?? 'WebSocket 连接超时';
      print('[ClawChat] Timeout: ${e.message}');
      _updateState(GatewayConnectionState.error);
      await _cleanup();
      return ConnectionResult(success: false, error: _lastError);
    } catch (e) {
      _lastError = _formatConnectionError(e);
      print('[ClawChat] Connection error: $e');
      _updateState(GatewayConnectionState.error);
      return ConnectionResult(success: false, error: _lastError);
    }
  }

  String _formatConnectionError(dynamic error) {
    final msg = error.toString();
    if (msg.contains('Connection refused')) {
      return '连接被拒绝\n服务器可能未运行 Gateway 服务';
    }
    if (msg.contains('No route to host') ||
        msg.contains('Network is unreachable')) {
      return '网络不可达\n请检查设备网络连接';
    }
    if (msg.contains('Connection reset')) {
      return '连接被重置\n服务器可能不支持 WebSocket 连接';
    }
    if (msg.contains('HandshakeException') ||
        msg.contains('CERTIFICATE')) {
      return 'TLS 证书错误\n如果是局域网连接，请关闭加密连接 (WSS)';
    }
    return '连接失败: $msg';
  }

  void _handleMessage(dynamic data, Completer<ConnectionResult> completer) {
    try {
      final response = jsonDecode(data as String);
      print('[ClawChat] Received: ${response['type']} ${response['event'] ?? response['id'] ?? ''}');

      // 处理 connect.challenge 事件
      if (response['type'] == 'event' &&
          response['event'] == 'connect.challenge') {
        final payload = response['payload'];
        if (payload != null && payload['nonce'] != null) {
          _connectNonce = payload['nonce'] as String;
          print('[ClawChat] Received challenge nonce');
        }
        _connectDelayTimer?.cancel();
        _sendConnectHandshake();
        return;
      }

      // 处理连接响应 - 通过 id 匹配，而非 method
      if (response['type'] == 'res' &&
          _connectRequestId != null &&
          response['id'] == _connectRequestId) {
        _connectRequestId = null;
        if (response['ok'] == true) {
          print('[ClawChat] Handshake successful!');
          _updateState(GatewayConnectionState.connected);
          _subscribeChat();
          if (!completer.isCompleted) {
            completer.complete(ConnectionResult(success: true));
          }
        } else {
          final errorMsg =
              response['error']?['message'] ?? 'Unknown error';
          _lastError = '认证失败: $errorMsg';
          print('[ClawChat] Handshake rejected: $errorMsg');
          _updateState(GatewayConnectionState.error);
          if (!completer.isCompleted) {
            completer
                .complete(ConnectionResult(success: false, error: _lastError));
          }
        }
        return;
      }

      // 连接后的事件
      if (response['type'] == 'event') {
        if (response['event'] == 'chat') {
          _handleChatEvent(response['payload']);
        }
        return;
      }

      // 其他响应（chat.send 等）
      if (response['type'] == 'res') {
        if (response['ok'] != true && response.containsKey('error')) {
          final error = response['error'];
          final errMsg = error['message']?.toString() ?? 'Unknown error';
          print('[ClawChat] Server response error: $errMsg');
        }
      }
    } catch (e) {
      print('[ClawChat] Message parse error: $e');
    }
  }

  void _sendConnectHandshake() {
    if (_handshakeSent) return;
    _handshakeSent = true;

    _connectRequestId =
        '${DateTime.now().millisecondsSinceEpoch}_${Random().nextInt(99999)}';

    final signedAtMs = DateTime.now().millisecondsSinceEpoch;
    final role = 'operator';
    final scopes = ['operator.read', 'operator.write', 'operator.admin'];
    final clientId = 'gateway-client';
    final clientMode = 'ui';

    // 构建设备认证（带 Ed25519 签名）
    Map<String, dynamic>? devicePayload;
    if (_deviceIdentity != null) {
      final authPayload = _deviceIdentity!.buildAuthPayload(
        clientId: clientId,
        clientMode: clientMode,
        role: role,
        scopes: scopes,
        signedAtMs: signedAtMs,
        token: config.token.isNotEmpty ? config.token : null,
        nonce: _connectNonce,
      );
      final signature = _deviceIdentity!.signPayload(authPayload);

      // 确保 publicKey 使用无 padding 的 base64url（服务器端约定）
      final pubKey = _deviceIdentity!.publicKey.replaceAll('=', '');
      devicePayload = {
        'id': _deviceIdentity!.deviceId,
        'publicKey': pubKey,
        'signature': signature,
        'signedAt': signedAtMs,
        if (_connectNonce != null) 'nonce': _connectNonce,
      };
    }

    final handshake = {
      'type': 'req',
      'id': _connectRequestId,
      'method': 'connect',
      'params': {
        'minProtocol': 3,
        'maxProtocol': 3,
        'client': {
          'id': clientId,
          'displayName': 'ClawChat',
          'version': '1.0.0',
          'platform': Platform.isIOS ? 'iOS' : Platform.isAndroid ? 'Android' : Platform.operatingSystem,
          'mode': clientMode,
        },
        'role': role,
        'scopes': scopes,
        'caps': [],
        if (config.token.isNotEmpty)
          'auth': {'token': config.token},
        if (devicePayload != null) 'device': devicePayload,
      },
    };

    print('[ClawChat] Sending connect handshake (id=$_connectRequestId)');
    print('[ClawChat] Auth: token=${config.token.isNotEmpty ? "SET" : "EMPTY"}, device=${devicePayload != null ? "SET" : "NONE"}, nonce=${_connectNonce != null ? "SET" : "NONE"}');
    _channel!.sink.add(jsonEncode(handshake));
  }

  void _handleChatEvent(dynamic payload) {
    if (payload == null) return;

    final runId = payload['runId'] as String?;
    final state = payload['state'] as String?;
    final message = payload['message'];

    if (message != null) {
      final content = message['content'];
      if (content is List && content.isNotEmpty) {
        final textPart = content.firstWhere(
          (c) => c['type'] == 'text',
          orElse: () => null,
        );
        if (textPart != null) {
          final text = textPart['text'] as String? ?? '';

          final isComplete = state == 'final';
          final assistantMessage = Message.assistant(
            id: runId,
            content: text,
            isComplete: isComplete,
          );
          _messageController.add(assistantMessage);
        }
      }
    }
  }

  Future<void> _cleanup() async {
    _connectDelayTimer?.cancel();
    _connectDelayTimer = null;
    await _subscription?.cancel();
    _subscription = null;
    await _channel?.sink.close();
    _channel = null;
    _handshakeSent = false;
    _connectRequestId = null;
  }

  void disconnect() {
    print('[ClawChat] Disconnecting...');
    _cleanup();
    _updateState(GatewayConnectionState.disconnected);
  }

  void sendMessage(String text) {
    if (_channel == null ||
        _currentState != GatewayConnectionState.connected) {
      throw Exception('Not connected to gateway');
    }

    final payload = {
      'type': 'req',
      'id': 'chat_${DateTime.now().millisecondsSinceEpoch}',
      'method': 'chat.send',
      'params': {
        'sessionKey': 'main',
        'message': text,
        'idempotencyKey':
            'chat_${DateTime.now().millisecondsSinceEpoch}_$sessionId',
      },
    };

    print('[ClawChat] Sending message');
    _channel!.sink.add(jsonEncode(payload));
  }

  void _subscribeChat() {
    final subscribe = {
      'type': 'req',
      'id': 'sub_${DateTime.now().millisecondsSinceEpoch}',
      'method': 'chat.subscribe',
      'params': {'sessionKey': 'main'},
    };
    print('[ClawChat] Subscribing to chat');
    _channel!.sink.add(jsonEncode(subscribe));
  }

  void _updateState(GatewayConnectionState state) {
    print('[ClawChat] State: ${_currentState.name} -> ${state.name}');
    _currentState = state;
    _stateController.add(state);
  }

  String _generateSessionId() {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final random = Random().nextInt(10000);
    return 'session_$timestamp$random';
  }

  void dispose() {
    disconnect();
    _messageController.close();
    _stateController.close();
  }
}
