import 'package:flutter/material.dart';

class TappableView extends StatefulWidget {
  const TappableView({
    required this.child,
    super.key,
    this.isEnabled = true,
    this.shouldHaveScaleAnimation = false,
    this.onTap,
    this.onLongTap,
    this.minWidth,
    this.minHeight,
  });

  final bool isEnabled;
  final bool shouldHaveScaleAnimation;
  final Widget child;
  final double? minHeight;
  final double? minWidth;
  final VoidCallback? onTap;
  final VoidCallback? onLongTap;

  @override
  State<TappableView> createState() => _TappableViewState();
}

class _TappableViewState extends State<TappableView>
    with SingleTickerProviderStateMixin {
  static const kFadeOutDuration = Duration(milliseconds: 120);
  static const kFadeInDuration = Duration(milliseconds: 180);
  final _opacityTween = Tween<double>(begin: 1);

  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      value: 0,
      vsync: this,
    );
    _opacityAnimation = _animationController
        .drive(CurveTween(curve: Curves.decelerate))
        .drive(_opacityTween);
    _setTween();
  }

  @override
  void didUpdateWidget(TappableView old) {
    super.didUpdateWidget(old);
    _setTween();
  }

  void _setTween() {
    _opacityTween.end = 0.65;
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  bool _buttonHeldDown = false;

  void _handleTapDown(TapDownDetails event) {
    if (!_buttonHeldDown) {
      _buttonHeldDown = true;
      _animate();
    }
  }

  void _handleTapUp(TapUpDetails event) {
    if (_buttonHeldDown) {
      _buttonHeldDown = false;
      _animate();
    }
  }

  void _handleTapCancel() {
    if (_buttonHeldDown) {
      _buttonHeldDown = false;
      _animate();
    }
  }

  void _animate() {
    if (_animationController.isAnimating) return;
    final wasHeldDown = _buttonHeldDown;
    _buttonHeldDown
        ? _animationController.animateTo(
          1,
          duration: kFadeOutDuration,
          curve: Curves.easeInOutCubicEmphasized,
        )
        : _animationController
            .animateTo(0, duration: kFadeInDuration, curve: Curves.easeOutCubic)
            .then<void>((_) {
              if (mounted && wasHeldDown != _buttonHeldDown) _animate();
            });
  }

  @override
  Widget build(BuildContext context) {
    final isEnabled = widget.isEnabled;
    final hasTap = widget.onTap != null || widget.onLongTap != null;

    return MouseRegion(
      cursor:
          hasTap && isEnabled
              ? SystemMouseCursors.click
              : SystemMouseCursors.basic,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTapDown: hasTap && isEnabled ? _handleTapDown : null,
        onTapUp: hasTap && isEnabled ? _handleTapUp : null,
        onTapCancel: hasTap && isEnabled ? _handleTapCancel : null,
        onTap: widget.onTap,
        onLongPress: widget.onLongTap,
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            if (widget.shouldHaveScaleAnimation) {
              return Transform.scale(
                scale: 1 + _animationController.value * 0.02,
                child: widget.child,
              );
            }
            return FadeTransition(
              opacity: _opacityAnimation,
              child: Align(
                widthFactor: 1.1,
                heightFactor: 1,
                child: widget.child,
              ),
            );
          },
        ),
      ),
    );
  }
}
