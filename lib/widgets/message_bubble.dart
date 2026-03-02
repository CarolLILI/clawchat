import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../constants/app_theme.dart';
import '../../l10n/app_localizations.dart';
import '../../models/message.dart';
import 'bubble_menu_overlay.dart';

/// 消息气泡
class MessageBubble extends StatefulWidget {
  final Message message;

  const MessageBubble({
    super.key,
    required this.message,
  });

  @override
  State<MessageBubble> createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  final GlobalKey _bubbleKey = GlobalKey();

  void _showMessageActions(BuildContext context) {
    HapticFeedback.mediumImpact();

    final box =
        _bubbleKey.currentContext?.findRenderObject() as RenderBox?;
    if (box == null) return;

    final offset = box.localToGlobal(Offset.zero);
    final size = box.size;
    final bubbleRect = offset & size;

    final isUser = widget.message.isUser;
    final s = S.of(context);

    final bubbleCopy = _buildBubbleDecoration(isUser);

    Navigator.of(context).push(
      BubbleMenuRoute(
        child: BubbleMenuOverlay(
          bubbleRect: bubbleRect,
          bubbleWidget: bubbleCopy,
          isUserBubble: isUser,
          copyLabel: s.copyMessage,
          quoteReplyLabel: s.quoteReply,
          onCopy: () async {
            await Clipboard.setData(
              ClipboardData(text: widget.message.content),
            );
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(s.messageCopied),
                  duration: const Duration(seconds: 2),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            }
          },
          onQuoteReply: () {},
        ),
      ),
    );
  }

  BoxDecoration _bubbleDecoration(bool isUser) {
    return BoxDecoration(
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
    );
  }

  Widget _buildBubbleDecoration(bool isUser) {
    return Container(
      decoration: _bubbleDecoration(isUser),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildContent(isUser),
          const SizedBox(height: 4),
          Text(
            _formatTime(widget.message.timestamp),
            style: AppTextStyles.captionSmall.copyWith(
              color: isUser
                  ? AppColors.textOnPrimary.withValues(alpha: 0.7)
                  : AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isUser = widget.message.isUser;

    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: GestureDetector(
        onLongPress: () {
          if (widget.message.content.isNotEmpty && widget.message.isComplete) {
            _showMessageActions(context);
          }
        },
        child: Container(
          key: _bubbleKey,
          margin: EdgeInsets.only(
            left: isUser ? 64 : 16,
            right: isUser ? 16 : 64,
            top: 4,
            bottom: 4,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: _bubbleDecoration(isUser),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (widget.message.isComplete || widget.message.content.isNotEmpty)
                _buildContent(isUser)
              else
                _buildThinkingIndicator(),
              const SizedBox(height: 4),
              Text(
                _formatTime(widget.message.timestamp),
                style: AppTextStyles.captionSmall.copyWith(
                  color: isUser
                      ? AppColors.textOnPrimary.withValues(alpha: 0.7)
                      : AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(bool isUser) {
    if (!isUser) {
      return MarkdownBody(
        data: widget.message.content,
        styleSheet: MarkdownStyleSheet(
          p: AppTextStyles.bodyMedium,
          code: AppTextStyles.caption.copyWith(
            backgroundColor: AppColors.surfaceVariant,
            fontFamily: 'monospace',
          ),
          codeblockDecoration: BoxDecoration(
            color: AppColors.surfaceVariant,
            borderRadius: BorderRadius.circular(AppRadius.medium),
          ),
        ),
      );
    }

    return Text(
      widget.message.content,
      style: AppTextStyles.bodyMedium.copyWith(
        color: AppColors.textOnPrimary,
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
            color: AppColors.textSecondary
                .withValues(alpha: _animation.value * 0.7),
            shape: BoxShape.circle,
          ),
        );
      },
    );
  }
}
