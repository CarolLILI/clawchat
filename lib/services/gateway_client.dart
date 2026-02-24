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

enum GatewayErrorType {
  cannotConnect,
  connectionTimeout,
  networkCheckFailed,
  webSocketHandshakeTimeout,
  webSocketError,
  serverClosedConnection,
  gatewayHandshakeTimeout,
  webSocketTimeout,
  connectionRefused,
  networkUnreachable,
  connectionReset,
  tlsCertificate,
  genericConnection,
  authFailed,
}

class ConnectionResult {
  final bool success;
  final String? error;
  final GatewayErrorType? errorType;
  final Map<String, String> errorParams;
  ConnectionResult({
    required this.success,
    this.error,
    this.errorType,
    this.errorParams = const {},
  });
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
  GatewayErrorType? _lastErrorType;
  GatewayErrorType? get lastErrorType => _lastErrorType;
  Map<String, String> _lastErrorParams = {};
  Map<String, String> get lastErrorParams => _lastErrorParams;

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
      return ConnectionResult(
        success: false,
        error: e.message,
        errorType: GatewayErrorType.cannotConnect,
        errorParams: {
          'address': '${config.host}:${config.port}',
          'detail': e.message,
        },
      );
    } on TimeoutException {
      return ConnectionResult(
        success: false,
        error: 'timeout',
        errorType: GatewayErrorType.connectionTimeout,
        errorParams: {'address': '${config.host}:${config.port}'},
      );
    } catch (e) {
      return ConnectionResult(
        success: false,
        error: e.toString(),
        errorType: GatewayErrorType.networkCheckFailed,
        errorParams: {'error': e.toString()},
      );
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
          throw TimeoutException('ws_handshake_timeout');
        },
      );
      print('[ClawChat] WebSocket connected');

      final completer = Completer<ConnectionResult>();

      _subscription = _channel!.stream.listen(
        (data) => _handleMessage(data, completer),
        onError: (error) {
          print('[ClawChat] WebSocket error: $error');
          _lastError = error.toString();
          _lastErrorType = GatewayErrorType.webSocketError;
          _lastErrorParams = {'error': error.toString()};
          _updateState(GatewayConnectionState.error);
          if (!completer.isCompleted) {
            completer.complete(ConnectionResult(
              success: false,
              error: _lastError,
              errorType: GatewayErrorType.webSocketError,
              errorParams: {'error': error.toString()},
            ));
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
            final detail =
                '${code != null ? ' (code: $code)' : ''}'
                '${reason != null && reason.isNotEmpty ? ': $reason' : ''}';
            completer.complete(ConnectionResult(
              success: false,
              error: 'server_closed',
              errorType: GatewayErrorType.serverClosedConnection,
              errorParams: {'detail': detail},
            ));
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
          _lastError = 'gateway_handshake_timeout';
          _lastErrorType = GatewayErrorType.gatewayHandshakeTimeout;
          _lastErrorParams = {};
          print('[ClawChat] Handshake timeout');
          _updateState(GatewayConnectionState.error);
          completer.complete(ConnectionResult(
            success: false,
            error: _lastError,
            errorType: GatewayErrorType.gatewayHandshakeTimeout,
          ));
        }
      });

      return await completer.future;
    } on TimeoutException catch (e) {
      final isWsHandshake = e.message == 'ws_handshake_timeout';
      final errorType = isWsHandshake
          ? GatewayErrorType.webSocketHandshakeTimeout
          : GatewayErrorType.webSocketTimeout;
      _lastError = e.message ?? 'timeout';
      _lastErrorType = errorType;
      _lastErrorParams = {};
      print('[ClawChat] Timeout: ${e.message}');
      _updateState(GatewayConnectionState.error);
      await _cleanup();
      return ConnectionResult(
        success: false,
        error: _lastError,
        errorType: errorType,
      );
    } catch (e) {
      final classified = _classifyConnectionError(e);
      _lastError = e.toString();
      _lastErrorType = classified.type;
      _lastErrorParams = classified.params;
      print('[ClawChat] Connection error: $e');
      _updateState(GatewayConnectionState.error);
      return ConnectionResult(
        success: false,
        error: _lastError,
        errorType: classified.type,
        errorParams: classified.params,
      );
    }
  }

  ({GatewayErrorType type, Map<String, String> params}) _classifyConnectionError(dynamic error) {
    final msg = error.toString();
    if (msg.contains('Connection refused')) {
      return (type: GatewayErrorType.connectionRefused, params: const {});
    }
    if (msg.contains('No route to host') ||
        msg.contains('Network is unreachable')) {
      return (type: GatewayErrorType.networkUnreachable, params: const {});
    }
    if (msg.contains('Connection reset')) {
      return (type: GatewayErrorType.connectionReset, params: const {});
    }
    if (msg.contains('HandshakeException') ||
        msg.contains('CERTIFICATE')) {
      return (type: GatewayErrorType.tlsCertificate, params: const {});
    }
    return (type: GatewayErrorType.genericConnection, params: {'error': msg});
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
          _lastError = errorMsg;
          _lastErrorType = GatewayErrorType.authFailed;
          _lastErrorParams = {'error': errorMsg};
          print('[ClawChat] Handshake rejected: $errorMsg');
          _updateState(GatewayConnectionState.error);
          if (!completer.isCompleted) {
            completer.complete(ConnectionResult(
              success: false,
              error: _lastError,
              errorType: GatewayErrorType.authFailed,
              errorParams: {'error': errorMsg},
            ));
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
        if (config.isPasswordAuth && config.password.isNotEmpty)
          'auth': {'password': config.password}
        else if (config.token.isNotEmpty)
          'auth': {'token': config.token},
        if (devicePayload != null) 'device': devicePayload,
      },
    };

    final authDesc = config.isPasswordAuth
        ? 'password=${config.password.isNotEmpty ? "SET" : "EMPTY"}'
        : 'token=${config.token.isNotEmpty ? "SET" : "EMPTY"}';
    print('[ClawChat] Sending connect handshake (id=$_connectRequestId)');
    print('[ClawChat] Auth: $authDesc, device=${devicePayload != null ? "SET" : "NONE"}, nonce=${_connectNonce != null ? "SET" : "NONE"}');
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
        'sessionKey': 'main_$sessionId',
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
      'params': {'sessionKey': 'main_$sessionId'},
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
