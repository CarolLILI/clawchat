import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'message.g.dart';
part 'message.freezed.dart';

/// 消息角色
enum MessageRole {
  user,      // 用户发送
  assistant, // AI 回复
  system,    // 系统消息
}

@freezed
class Message with _$Message {
  @HiveType(typeId: 1)
  const factory Message({
    @HiveField(0) required String id,
    @HiveField(1) required String content,
    @HiveField(2) required MessageRole role,
    @HiveField(3) required DateTime timestamp,
    @HiveField(4) @Default(true) bool isComplete,
    @HiveField(5) String? error,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  const Message._();

  /// 是否为用户消息
  bool get isUser => role == MessageRole.user;

  /// 是否为 AI 消息
  bool get isAssistant => role == MessageRole.assistant;

  /// 创建用户消息
  factory Message.user({
    required String content,
    String? id,
  }) {
    return Message(
      id: id ?? DateTime.now().millisecondsSinceEpoch.toString(),
      content: content,
      role: MessageRole.user,
      timestamp: DateTime.now(),
    );
  }

  /// 创建 AI 消息
  factory Message.assistant({
    required String content,
    String? id,
    bool isComplete = true,
  }) {
    return Message(
      id: id ?? DateTime.now().millisecondsSinceEpoch.toString(),
      content: content,
      role: MessageRole.assistant,
      timestamp: DateTime.now(),
      isComplete: isComplete,
    );
  }

  /// 创建思考中的消息
  factory Message.thinking() {
    return Message(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      content: '',
      role: MessageRole.assistant,
      timestamp: DateTime.now(),
      isComplete: false,
    );
  }
}
