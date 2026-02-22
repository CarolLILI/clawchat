import 'package:flutter/material.dart';

import '../../constants/app_theme.dart';

/// 底部输入栏
class InputBar extends StatefulWidget {
  final ValueChanged<String>? onSend;
  final bool isEnabled;

  const InputBar({
    super.key,
    this.onSend,
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
  void dispose() {
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: const Border(
          top: BorderSide(color: AppColors.border),
        ),
      ),
      child: SafeArea(
        child: Row(
          children: [
            // 附件按钮
            IconButton(
              onPressed: widget.isEnabled ? () {} : null,
              icon: const Icon(Icons.attach_file),
              color: AppColors.textSecondary,
            ),
            
            // 输入框
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  controller: _controller,
                  focusNode: _focusNode,
                  enabled: widget.isEnabled,
                  decoration: const InputDecoration(
                    hintText: '输入消息...',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 12),
                  ),
                  maxLines: null,
                  textInputAction: TextInputAction.send,
                  onChanged: (text) {
                    setState(() => _isComposing = text.trim().isNotEmpty);
                  },
                  onSubmitted: (_) => _handleSubmit(),
                ),
              ),
            ),
            
            // 发送按钮
            const SizedBox(width: 8),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              child: Material(
                color: _isComposing && widget.isEnabled
                    ? AppColors.primary
                    : AppColors.background,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap: _isComposing && widget.isEnabled ? _handleSubmit : null,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Icon(
                      Icons.send,
                      color: _isComposing && widget.isEnabled
                          ? AppColors.textOnPrimary
                          : AppColors.textSecondary,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
