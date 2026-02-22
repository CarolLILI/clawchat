import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'server_config.g.dart';
part 'server_config.freezed.dart';

@freezed
class ServerConfig with _$ServerConfig {
  @HiveType(typeId: 0)
  const factory ServerConfig({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String host,
    @HiveField(3) @Default(18789) int port,
    @HiveField(4) @Default('') String token,
    @HiveField(5) @Default(false) bool useTLS,
    @HiveField(6) @Default(false) bool isDefault,
    @HiveField(7) DateTime? lastConnected,
  }) = _ServerConfig;

  factory ServerConfig.fromJson(Map<String, dynamic> json) =>
      _$ServerConfigFromJson(json);

  const ServerConfig._();

  /// 获取 WebSocket URL
  String get wsUrl => useTLS 
      ? 'wss://$host:$port' 
      : 'ws://$host:$port';

  /// 获取显示地址
  String get displayAddress => '$host:$port';

  /// 创建本地服务器配置
  factory ServerConfig.local({
    required String name,
    required String host,
    int port = 18789,
    required String token,
  }) {
    return ServerConfig(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
      host: host,
      port: port,
      token: token,
      useTLS: false,
    );
  }

  /// 创建云服务器配置
  factory ServerConfig.cloud({
    required String name,
    required String domain,
    required String token,
  }) {
    return ServerConfig(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
      host: domain,
      port: 443,
      token: token,
      useTLS: true,
    );
  }
}
