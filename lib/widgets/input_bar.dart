import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

import '../../constants/app_theme.dart';

/// 底部输入栏
class InputBar extends StatefulWidget {
  final ValueChanged<String>? onSend;
  final ValueChanged<bool>? onFocusChanged;
  final bool isEnabled;

  const InputBar({
    super.key,
    this.onSend,
    this.onFocusChanged,
    this.isEnabled = true,
  });

  @override
  State<InputBar> createState() => _InputBarState();
}

class _InputBarState extends State<InputBar> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  bool _isComposing = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    widget.onFocusChanged?.call(_focusNode.hasFocus);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    widget.onSend?.call(text);
    _controller.clear();
    setState(() => _isComposing = false);
  }

  @override
  Widget build(BuildContext context) {
    final bool canSend = _isComposing && widget.isEnabled;

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(
          top: BorderSide(color: AppColors.border, width: 0.5),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // 输入框
              Expanded(
                child: Container(
                  constraints: const BoxConstraints(minHeight: 40, maxHeight: 120),
                  decoration: BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: AppColors.border, width: 0.5),
                  ),
                  child: TextField(
                    controller: _controller,
                    focusNode: _focusNode,
                    enabled: widget.isEnabled,
                    decoration: InputDecoration(
                      hintText: widget.isEnabled ? S.of(context).inputMessageHint : S.of(context).notConnectedToServer,
                      hintStyle: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.textTertiary,
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                    ),
                    style: AppTextStyles.bodyMedium,
                    maxLines: null,
                    textInputAction: TextInputAction.newline,
                    onChanged: (text) {
                      setState(() => _isComposing = text.trim().isNotEmpty);
                    },
                  ),
                ),
              ),

              const SizedBox(width: 8),

              // 发送按钮
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 180),
                transitionBuilder: (child, animation) => ScaleTransition(
                  scale: animation,
                  child: child,
                ),
                child: GestureDetector(
                  key: ValueKey(canSend),
                  onTap: canSend ? _handleSubmit : null,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: canSend ? AppColors.primary : AppColors.background,
                      shape: BoxShape.circle,
                      border: canSend
                          ? null
                          : Border.all(color: AppColors.border, width: 0.5),
                    ),
                    child: Icon(
                      Icons.arrow_upward_rounded,
                      color: canSend
                          ? AppColors.textOnPrimary
                          : AppColors.textSecondary,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
