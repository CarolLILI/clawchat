import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/message.dart';
import '../models/server_config.dart';
import '../services/gateway_client.dart';
import '../services/storage_service.dart';
import 'server_provider.dart';

/// 当前服务器配置 Provider（用于存储当前选中的服务器）
final currentServerProvider = StateProvider<ServerConfig?>((ref) => null);

/// 连接状态 Provider - 使用服务器 ID 作为 key
final connectionProvider = StateNotifierProvider.family<ConnectionNotifier, GatewayConnectionState, String>(
  (ref, serverId) {
    final storage = ref.read(storageServiceProvider);
    final servers = storage.getServers();
    final config = servers.where((s) => s.id == serverId).firstOrNull;
    if (config == null) {
      print('WARNING: Server not found in storage: $serverId');
      // 创建一个默认配置，避免崩溃
      return ConnectionNotifier(
        ServerConfig(
          id: serverId,
          name: 'Unknown',
          host: 'localhost',
          port: 18789,
          token: '',
        ),
        storage,
      );
    }
    return ConnectionNotifier(config, storage);
  },
);

/// 消息列表 Provider - 使用服务器 ID 作为 key
final messageListProvider = StateNotifierProvider.family<MessageNotifier, List<Message>, String>(
  (ref, serverId) {
    final storage = ref.read(storageServiceProvider);
    final servers = storage.getServers();
    final config = servers.where((s) => s.id == serverId).firstOrNull;
    if (config == null) {
      throw Exception('Server not found: $serverId');
    }
    final messageNotifier = MessageNotifier(config, storage);

    // 通过 Riverpod 监听连接状态，不直接绑定 client 实例的 stream
    ref.listen<GatewayConnectionState>(
      connectionProvider(serverId),
      (previous, next) {
        if (next == GatewayConnectionState.connected) {
          final client = ref.read(connectionProvider(serverId).notifier).client;
          messageNotifier.setClient(client);
        }
      },
    );

    // 如果已经连接，立即设置 client
    final currentState = ref.read(connectionProvider(serverId));
    if (currentState == GatewayConnectionState.connected) {
      final client = ref.read(connectionProvider(serverId).notifier).client;
      messageNotifier.setClient(client);
    }

    return messageNotifier;
  },
);

/// 连接管理器
class ConnectionNotifier extends StateNotifier<GatewayConnectionState> {
  ServerConfig config;
  final StorageService _storage;
  GatewayClient? _client;
  
  ConnectionNotifier(this.config, this._storage) : super(GatewayConnectionState.disconnected) {
    _createClient();
  }

  void _createClient() {
    _client = GatewayClient(config);
    _client!.stateStream.listen((state) {
      this.state = state;
      if (state == GatewayConnectionState.connected) {
        // 更新最后连接时间
        _updateLastConnected();
      }
    });
  }

  GatewayClient get client => _client!;
  
  /// 更新配置并重建客户端
  void updateConfig(ServerConfig newConfig) {
    final configChanged = config.id != newConfig.id || 
        config.host != newConfig.host || 
        config.port != newConfig.port ||
        config.token != newConfig.token ||
        config.password != newConfig.password ||
        config.authMode != newConfig.authMode ||
        config.useTLS != newConfig.useTLS;

    config = newConfig;

    if (configChanged) {
      print('Updating connection config, recreating client');
      _client?.dispose();
      _createClient();
      state = GatewayConnectionState.disconnected;
    }
  }

  String? _lastError;
  String? get lastError => _lastError;
  GatewayErrorType? _lastErrorType;
  GatewayErrorType? get lastErrorType => _lastErrorType;
  Map<String, String> _lastErrorParams = {};
  Map<String, String> get lastErrorParams => _lastErrorParams;

  /// 连接（带重试，网络不可达时不重试）
  Future<void> connect() async {
    if (state == GatewayConnectionState.connecting || 
        state == GatewayConnectionState.connected) return;
    
    if (_client == null) {
      _createClient();
    }
    
    int retries = 0;
    const maxRetries = 2;
    
    while (retries < maxRetries) {
      try {
        print('Connection attempt ${retries + 1}/$maxRetries');
        final result = await _client!.connect();
        if (result.success) {
          _lastError = null;
          _lastErrorType = null;
          _lastErrorParams = {};
          return;
        } else {
          _lastError = result.error;
          _lastErrorType = result.errorType;
          _lastErrorParams = result.errorParams;
          print('Connection failed (attempt ${retries + 1}): ${result.error}');
          if (result.errorType == GatewayErrorType.cannotConnect ||
              result.errorType == GatewayErrorType.connectionTimeout ||
              result.errorType == GatewayErrorType.networkUnreachable) {
            break;
          }
        }
      } catch (e) {
        _lastError = e.toString();
        _lastErrorType = null;
        _lastErrorParams = {};
        print('Connection failed (attempt ${retries + 1}): $e');
      }
      retries++;
      if (retries < maxRetries) {
        await Future.delayed(Duration(seconds: retries));
      }
    }
    
    print('Connection failed after attempts');
    state = GatewayConnectionState.error;
  }
  
  /// 强制重新连接
  Future<void> reconnect() async {
    if (state == GatewayConnectionState.connected) {
      disconnect();
    }
    await Future.delayed(const Duration(milliseconds: 500));
    await connect();
  }

  /// 断开
  void disconnect() {
    _client?.disconnect();
  }

  /// 更新最后连接时间
  Future<void> _updateLastConnected() async {
    final updated = config.copyWith(lastConnected: DateTime.now());
    await _storage.saveServer(updated);
  }

  @override
  void dispose() {
    _client?.dispose();
    super.dispose();
  }
}

/// 消息管理器
class MessageNotifier extends StateNotifier<List<Message>> {
  final ServerConfig config;
  final StorageService _storage;
  GatewayClient? _client;
  
  MessageNotifier(this.config, this._storage) : super([]) {
    _loadMessages();
  }

  /// 加载历史消息
  void _loadMessages() {
    state = _storage.getMessages(config.id);
  }

  /// 设置 GatewayClient（在连接成功后调用）
  void setClient(GatewayClient client) {
    if (_client == client) return; // 避免重复设置
    _client = client;
    _client!.messageStream.listen((message) {
      _handleIncomingMessage(message);
    });
  }

  /// 发送消息。当未连接时返回 false，UI 层负责显示本地化错误。
  Future<bool> sendMessage(String text) async {
    if (_client == null || _client!.currentState != GatewayConnectionState.connected) {
      return false;
    }
    
    final userMessage = Message.user(content: text);
    state = [...state, userMessage];
    await _storage.saveMessage(config.id, userMessage);

    final thinkingMessage = Message.thinking();
    state = [...state, thinkingMessage];

    try {
      _client!.sendMessage(text);
      return true;
    } catch (e) {
      final errorMessage = thinkingMessage.copyWith(
        content: e.toString(),
        isComplete: true,
        error: e.toString(),
      );
      state = [...state.sublist(0, state.length - 1), errorMessage];
      return false;
    }
  }

  /// 处理接收到的消息
  void _handleIncomingMessage(Message message) {
    final index = state.indexWhere((m) => m.id == message.id);
    
    if (index != -1) {
      // 存在相同 ID 的消息，替换它（更新内容）
      final newState = List<Message>.from(state);
      newState[index] = message;
      state = newState;
    } else if (state.isNotEmpty && !state.last.isComplete && state.last.isAssistant) {
      // 如果没有找到相同的 ID，但最后一条是未完成的助手消息（如"思考中"）
      // 用真实的消息替换它
      state = [...state.sublist(0, state.length - 1), message];
    } else {
      // 全新消息
      state = [...state, message];
    }
    
    // 保存到本地
    _storage.saveMessage(config.id, message);
  }

  /// 清除历史
  Future<void> clearHistory() async {
    await _storage.clearMessages(config.id);
    state = [];
  }
}
