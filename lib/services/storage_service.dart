import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

import '../models/server_config.dart';
import '../models/message.dart';

/// 本地存储服务
class StorageService {
  static final StorageService _instance = StorageService._internal();
  factory StorageService() => _instance;
  StorageService._internal();

  Box<ServerConfig>? _serverBox;
  Box<Message>? _messageBox;

  /// 初始化
  Future<void> init() async {
    await Hive.initFlutter();
    
    // 注册适配器
    Hive.registerAdapter(ServerConfigAdapter());
    Hive.registerAdapter(MessageAdapter());
    Hive.registerAdapter(MessageRoleAdapter());
    
    // 打开盒子
    _serverBox = await Hive.openBox<ServerConfig>('servers');
    _messageBox = await Hive.openBox<Message>('messages');
  }

  // ========== 服务器配置 ==========

  /// 获取所有服务器
  List<ServerConfig> getServers() {
    if (_serverBox == null) return [];
    final servers = <ServerConfig>[];
    for (final key in _serverBox!.keys) {
      try {
        final server = _serverBox!.get(key);
        if (server != null) servers.add(server);
      } catch (e) {
        print('[ClawChat] Failed to read server $key, removing corrupted entry: $e');
        _serverBox!.delete(key);
      }
    }
    return servers;
  }

  /// 获取默认服务器
  ServerConfig? getDefaultServer() {
    final servers = getServers();
    try {
      return servers.firstWhere((s) => s.isDefault);
    } catch (_) {
      return servers.isNotEmpty ? servers.first : null;
    }
  }

  /// 保存服务器
  Future<void> saveServer(ServerConfig config) async {
    await _serverBox?.put(config.id, config);
  }

  /// 删除服务器
  Future<void> deleteServer(String id) async {
    await _serverBox?.delete(id);
  }

  /// 按指定顺序重新保存服务器列表
  Future<void> reorderServers(List<ServerConfig> servers) async {
    await _serverBox?.clear();
    for (final server in servers) {
      await _serverBox?.put(server.id, server);
    }
  }

  /// 设置默认服务器
  Future<void> setDefaultServer(String id) async {
    final servers = getServers();
    for (final server in servers) {
      final updated = server.copyWith(isDefault: server.id == id);
      await saveServer(updated);
    }
  }

  // ========== 消息历史 ==========

  /// 保存消息
  Future<void> saveMessage(String serverId, Message message) async {
    final key = '${serverId}_${message.id}';
    await _messageBox?.put(key, message);
  }

  /// 获取服务器的消息历史
  List<Message> getMessages(String serverId) {
    final messages = _messageBox?.values.where(
      (m) => _messageBox?.keyAt(_messageBox?.values.toList().indexOf(m) ?? 0).toString().startsWith('${serverId}_') ?? false
    ).toList() ?? [];
    
    messages.sort((a, b) => a.timestamp.compareTo(b.timestamp));
    return messages;
  }

  /// 清除消息历史
  Future<void> clearMessages(String serverId) async {
    final keys = _messageBox?.keys.where(
      (k) => k.toString().startsWith('${serverId}_')
    ).toList();
    
    if (keys != null) {
      await _messageBox?.deleteAll(keys);
    }
  }

  // ========== 配置导入导出 ==========

  /// 导出配置为 JSON
  String exportConfig() {
    final servers = getServers();
    final config = {
      'version': '1.0.0',
      'servers': servers.map((s) => s.toJson()).toList(),
      'exportedAt': DateTime.now().toIso8601String(),
    };
    return jsonEncode(config);
  }

  /// 从 JSON 导入配置
  Future<void> importConfig(String jsonString) async {
    final data = jsonDecode(jsonString);
    final servers = (data['servers'] as List)
        .map((s) => ServerConfig.fromJson(s))
        .toList();
    
    for (final server in servers) {
      await saveServer(server);
    }
  }
}

// Hive 适配器
class ServerConfigAdapter extends TypeAdapter<ServerConfig> {
  @override
  final int typeId = 0;

  @override
  ServerConfig read(BinaryReader reader) {
    final id = reader.read() as String;
    final name = reader.read() as String;
    final host = reader.read() as String;
    final port = reader.read() as int;
    final token = reader.read() as String;
    final useTLS = reader.read() as bool;
    final isDefault = reader.read() as bool;
    final lastConnected = reader.read() as DateTime?;

    String authMode = 'token';
    String password = '';
    try {
      final rawAuthMode = reader.read();
      if (rawAuthMode is String) authMode = rawAuthMode;
      final rawPassword = reader.read();
      if (rawPassword is String) password = rawPassword;
    } catch (_) {
      // Old data without authMode/password fields
    }

    return ServerConfig(
      id: id,
      name: name,
      host: host,
      port: port,
      token: token,
      useTLS: useTLS,
      isDefault: isDefault,
      lastConnected: lastConnected,
      authMode: authMode,
      password: password,
    );
  }

  @override
  void write(BinaryWriter writer, ServerConfig obj) {
    writer.write(obj.id);
    writer.write(obj.name);
    writer.write(obj.host);
    writer.write(obj.port);
    writer.write(obj.token);
    writer.write(obj.useTLS);
    writer.write(obj.isDefault);
    writer.write(obj.lastConnected);
    writer.write(obj.authMode);
    writer.write(obj.password);
  }
}

class MessageAdapter extends TypeAdapter<Message> {
  @override
  final int typeId = 1;

  @override
  Message read(BinaryReader reader) {
    return Message(
      id: reader.read(),
      content: reader.read(),
      role: MessageRole.values[reader.read()],
      timestamp: DateTime.parse(reader.read()),
      isComplete: reader.read(),
      error: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, Message obj) {
    writer.write(obj.id);
    writer.write(obj.content);
    writer.write(obj.role.index);
    writer.write(obj.timestamp.toIso8601String());
    writer.write(obj.isComplete);
    writer.write(obj.error);
  }
}

class MessageRoleAdapter extends TypeAdapter<MessageRole> {
  @override
  final int typeId = 2;

  @override
  MessageRole read(BinaryReader reader) {
    return MessageRole.values[reader.readByte()];
  }

  @override
  void write(BinaryWriter writer, MessageRole obj) {
    writer.writeByte(obj.index);
  }
}
