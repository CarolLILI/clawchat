import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../constants/app_theme.dart';
import '../../l10n/app_localizations.dart';
import '../../models/message.dart';

/// 消息气泡
class MessageBubble extends StatelessWidget {
  final Message message;

  const MessageBubble({
    super.key,
    required this.message,
  });

  void _showMessageActions(BuildContext context) {
    HapticFeedback.mediumImpact();
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: false,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black26,
      builder: (sheetContext) {
        final s = S.of(sheetContext);
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Action card: Copy + Quote Reply
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  margin: EdgeInsets.zero,
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Copy
                      InkWell(
                        onTap: () async {
                          Navigator.of(sheetContext).pop();
                          await Clipboard.setData(
                            ClipboardData(text: message.content),
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
                        child: SizedBox(
                          height: 56,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              const Positioned(
                                left: 16,
                                child: Icon(
                                  Icons.copy_outlined,
                                  color: AppColors.textPrimary,
                                  size: 20,
                                ),
                              ),
                              Center(
                                child: Text(
                                  s.copyMessage,
                                  style: const TextStyle(
                                    fontSize: 17,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 1,
                        thickness: 0.5,
                        color: AppColors.textSecondary.withValues(alpha: 0.3),
                        indent: 16,
                        endIndent: 16,
                      ),
                      // Quote Reply
                      InkWell(
                        onTap: () {
                          Navigator.of(sheetContext).pop();
                        },
                        child: SizedBox(
                          height: 56,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              const Positioned(
                                left: 16,
                                child: Icon(
                                  Icons.format_quote_outlined,
                                  color: AppColors.textPrimary,
                                  size: 20,
                                ),
                              ),
                              Center(
                                child: Text(
                                  s.quoteReply,
                                  style: const TextStyle(
                                    fontSize: 17,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                // Cancel card
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  margin: EdgeInsets.zero,
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  child: InkWell(
                    onTap: () => Navigator.of(sheetContext).pop(),
                    child: SizedBox(
                      height: 56,
                      child: Center(
                        child: Text(
                          s.cancel,
                          style: const TextStyle(
                            fontSize: 17,
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isUser = message.isUser;

    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: GestureDetector(
        onLongPress: () {
          if (message.content.isNotEmpty && message.isComplete) {
            _showMessageActions(context);
          }
        },
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
              if (message.isComplete || message.content.isNotEmpty)
                _buildContent(isUser)
              else
                _buildThinkingIndicator(),
              const SizedBox(height: 4),
              Text(
                _formatTime(message.timestamp),
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
        data: message.content,
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
      message.content,
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
            color: AppColors.textSecondary.withValues(alpha: _animation.value * 0.7),
            shape: BoxShape.circle,
          ),
        );
      },
    );
  }
}
