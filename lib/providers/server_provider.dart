import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/server_config.dart';
import '../services/storage_service.dart';

/// 存储服务 Provider
final storageServiceProvider = Provider<StorageService>((ref) {
  return StorageService();
});

/// 服务器列表 Provider
final serverListProvider = StateNotifierProvider<ServerListNotifier, List<ServerConfig>>((ref) {
  final storage = ref.read(storageServiceProvider);
  return ServerListNotifier(storage);
});

/// 默认服务器 Provider
final defaultServerProvider = Provider<ServerConfig?>((ref) {
  final servers = ref.watch(serverListProvider);
  try {
    return servers.firstWhere((s) => s.isDefault);
  } catch (_) {
    return servers.isNotEmpty ? servers.first : null;
  }
});

/// 服务器列表管理器
class ServerListNotifier extends StateNotifier<List<ServerConfig>> {
  final StorageService _storage;
  
  ServerListNotifier(this._storage) : super([]) {
    _loadServers();
  }

  /// 加载服务器列表
  void _loadServers() {
    state = _storage.getServers();
  }

  /// 添加服务器
  Future<void> addServer(ServerConfig config) async {
    // 如果这是第一个服务器，设为默认
    final isFirst = state.isEmpty;
    final server = isFirst ? config.copyWith(isDefault: true) : config;
    
    await _storage.saveServer(server);
    state = [...state, server];
  }

  /// 更新服务器
  Future<void> updateServer(String id, ServerConfig newConfig) async {
    await _storage.saveServer(newConfig);
    state = state.map((s) => s.id == id ? newConfig : s).toList();
  }

  /// 删除服务器
  Future<void> deleteServer(String id) async {
    await _storage.deleteServer(id);
    state = state.where((s) => s.id != id).toList();
    
    // 如果删的是默认服务器，重新设置默认
    final remaining = state.where((s) => s.isDefault).toList();
    if (remaining.isEmpty && state.isNotEmpty) {
      await setDefault(state.first.id);
    }
  }

  /// 设置默认服务器
  Future<void> setDefault(String id) async {
    await _storage.setDefaultServer(id);
    _loadServers(); // 重新加载
  }

  /// 刷新列表
  void refresh() {
    _loadServers();
  }

  /// 导出配置
  String exportConfig() {
    return _storage.exportConfig();
  }

  /// 导入配置
  Future<void> importConfig(String jsonString) async {
    await _storage.importConfig(jsonString);
    _loadServers();
  }
}

/// 当前选中服务器 Provider（用于切换）
final selectedServerProvider = StateProvider<ServerConfig?>((ref) => null);
