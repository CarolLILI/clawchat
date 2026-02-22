import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../constants/app_theme.dart';
import '../../models/message.dart';

/// 消息气泡
class MessageBubble extends StatelessWidget {
  final Message message;

  const MessageBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final isUser = message.isUser;
    
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(
          left: isUser ? 64 : 16,
          right: isUser ? 16 : 64,
          top: 4,
          bottom: 4,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isUser ? AppColors.userBubble : AppColors.aiBubble,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(AppRadius.large),
            topRight: const Radius.circular(AppRadius.large),
            bottomLeft: Radius.circular(isUser ? AppRadius.large : 4),
            bottomRight: Radius.circular(isUser ? 4 : AppRadius.large),
          ),
          boxShadow: [
            if (!isUser)
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // 消息内容
            if (message.isComplete || message.content.isNotEmpty)
              _buildContent(isUser)
            else
              _buildThinkingIndicator(),
            
            // 时间戳
            const SizedBox(height: 4),
            Text(
              _formatTime(message.timestamp),
              style: TextStyle(
                fontSize: 10,
                color: isUser 
                    ? AppColors.textOnPrimary.withValues(alpha: 0.7) 
                    : AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(bool isUser) {
    // AI 消息使用 Markdown 渲染
    if (!isUser) {
      return MarkdownBody(
        data: message.content,
        styleSheet: MarkdownStyleSheet(
          p: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 14,
          ),
          code: const TextStyle(
            backgroundColor: AppColors.surfaceVariant,
            fontFamily: 'monospace',
            fontSize: 12,
          ),
          codeblockDecoration: BoxDecoration(
            color: AppColors.surfaceVariant,
            borderRadius: BorderRadius.circular(AppRadius.medium),
          ),
        ),
      );
    }
    
    // 用户消息纯文本
    return Text(
      message.content,
      style: const TextStyle(
        color: AppColors.textOnPrimary,
        fontSize: 14,
      ),
    );
  }

  Widget _buildThinkingIndicator() {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _ThinkingDot(delay: 0),
        _ThinkingDot(delay: 200),
        _ThinkingDot(delay: 400),
      ],
    );
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }
}

/// 思考动画点
class _ThinkingDot extends StatefulWidget {
  final int delay;
  
  const _ThinkingDot({required this.delay});

  @override
  State<_ThinkingDot> createState() => _ThinkingDotState();
}

class _ThinkingDotState extends State<_ThinkingDot>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    
    _animation = Tween<double>(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    
    // 延迟启动
    Future.delayed(Duration(milliseconds: widget.delay), () {
      if (mounted) {
        _controller.repeat(reverse: true);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: AppColors.textSecondary.withValues(alpha: _animation.value * 0.7),
            shape: BoxShape.circle,
          ),
        );
      },
    );
  }
}
