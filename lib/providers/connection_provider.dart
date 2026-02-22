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
    final connectionNotifier = ref.read(connectionProvider(serverId).notifier);
    final servers = storage.getServers();
    final config = servers.where((s) => s.id == serverId).firstOrNull;
    if (config == null) {
      throw Exception('Server not found: $serverId');
    }
    final messageNotifier = MessageNotifier(config, storage);
    
    // 如果已经连接，立即设置 client
    if (connectionNotifier.client.currentState == GatewayConnectionState.connected) {
      messageNotifier.setClient(connectionNotifier.client);
    }
    
    // 监听状态变化
    connectionNotifier.client.stateStream.listen((state) {
      if (state == GatewayConnectionState.connected) {
        messageNotifier.setClient(connectionNotifier.client);
      }
    });
    
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
    if (config.id != newConfig.id || 
        config.host != newConfig.host || 
        config.token != newConfig.token ||
        config.port != newConfig.port) {
      print('Updating connection config');
      config = newConfig;
      _client?.dispose();
      _createClient();
    }
  }

  String? _lastError;
  String? get lastError => _lastError;

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
          return;
        } else {
          _lastError = result.error;
          print('Connection failed (attempt ${retries + 1}): ${result.error}');
          // 网络不可达类错误不需要重试
          if (result.error != null && (
              result.error!.contains('无法连接') ||
              result.error!.contains('连接服务器超时') ||
              result.error!.contains('网络不可达'))) {
            break;
          }
        }
      } catch (e) {
        _lastError = e.toString();
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

  /// 发送消息
  Future<void> sendMessage(String text) async {
    // 检查连接状态
    if (_client == null || _client!.currentState != GatewayConnectionState.connected) {
      final errorMessage = Message.assistant(
        content: '发送失败: 未连接到服务器',
      );
      state = [...state, errorMessage];
      return;
    }
    
    // 添加用户消息
    final userMessage = Message.user(content: text);
    state = [...state, userMessage];
    await _storage.saveMessage(config.id, userMessage);

    // 添加思考中消息
    final thinkingMessage = Message.thinking();
    state = [...state, thinkingMessage];

    // 发送
    try {
      _client!.sendMessage(text);
    } catch (e) {
      // 更新思考中消息为错误
      final errorMessage = thinkingMessage.copyWith(
        content: '发送失败: $e',
        isComplete: true,
        error: e.toString(),
      );
      state = [...state.sublist(0, state.length - 1), errorMessage];
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
