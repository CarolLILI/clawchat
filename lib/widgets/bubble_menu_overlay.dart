import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants/app_theme.dart';

class BubbleMenuOverlay extends StatefulWidget {
  final Rect bubbleRect;
  final Widget bubbleWidget;
  final bool isUserBubble;
  final VoidCallback onCopy;
  final String copyLabel;

  const BubbleMenuOverlay({
    super.key,
    required this.bubbleRect,
    required this.bubbleWidget,
    required this.isUserBubble,
    required this.onCopy,
    required this.copyLabel,
  });

  @override
  State<BubbleMenuOverlay> createState() => _BubbleMenuOverlayState();
}

class _BubbleMenuOverlayState extends State<BubbleMenuOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _bgAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<double> _menuAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 220),
    );

    _bgAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );
    _menuAnimation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.3, 1.0, curve: Curves.easeOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _dismiss() async {
    await _controller.reverse();
    if (mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const menuHeight = 88.0;
    const gap = 8.0;

    final spaceBelow = screenSize.height - widget.bubbleRect.bottom;
    final menuBelow = spaceBelow >= menuHeight + gap + 16;

    final menuTop = menuBelow
        ? widget.bubbleRect.bottom + gap
        : widget.bubbleRect.top - menuHeight - gap;

    const menuWidth = 80.0;
    double menuLeft;
    if (widget.isUserBubble) {
      menuLeft = widget.bubbleRect.right - menuWidth;
    } else {
      menuLeft = widget.bubbleRect.left;
    }
    menuLeft = menuLeft.clamp(8.0, screenSize.width - menuWidth - 8.0);

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                onTap: _dismiss,
                child: FadeTransition(
                  opacity: _bgAnimation,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    child: Container(
                      color: Colors.black.withValues(alpha: 0.5),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: widget.bubbleRect.left,
              top: widget.bubbleRect.top,
              width: widget.bubbleRect.width,
              height: widget.bubbleRect.height,
              child: ScaleTransition(
                scale: _scaleAnimation,
                alignment: widget.isUserBubble
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: widget.bubbleWidget,
              ),
            ),
            Positioned(
              left: menuLeft,
              top: menuTop,
              width: menuWidth,
              child: FadeTransition(
                opacity: _menuAnimation,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(0, menuBelow ? -0.2 : 0.2),
                    end: Offset.zero,
                  ).animate(_menuAnimation),
                  child: _buildActionBar(),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildActionBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildActionButton(
            icon: Icons.copy_outlined,
            label: widget.copyLabel,
            onTap: () async {
              await _dismiss();
              widget.onCopy();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required Future<void> Function() onTap,
  }) {
    return InkWell(
      onTap: () => onTap(),
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        width: 80,
        height: 64,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 22, color: AppColors.textPrimary),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                fontSize: 11,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BubbleMenuRoute extends PageRoute<void> {
  final Widget child;

  BubbleMenuRoute({required this.child});

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => false;

  @override
  bool get opaque => false;

  @override
  Duration get transitionDuration => Duration.zero;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return child;
  }
}
