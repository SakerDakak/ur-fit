import 'package:flutter/material.dart';

class DefaultAnimatedSwitcher extends StatelessWidget {
  const DefaultAnimatedSwitcher({
    super.key,
    this.transitionType = DefaultAnimatedSwitcherTransition.fade,
    this.duration = const Duration(milliseconds: 300),
    required this.child,
    this.switchInCurve = Curves.linear,
    this.switchOutCurve = Curves.linear,
    this.reverseDuration,
  });

  final Duration duration;
  final Duration? reverseDuration;
  final DefaultAnimatedSwitcherTransition transitionType;
  final Curve switchInCurve;
  final Curve switchOutCurve;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration,
      reverseDuration: reverseDuration,
      switchInCurve: switchInCurve,
      switchOutCurve: switchOutCurve,
      transitionBuilder: (child, animation) {
        switch (transitionType) {
          case DefaultAnimatedSwitcherTransition.fade:
            return FadeTransition(
              opacity: animation,
              child: child,
            );

          case DefaultAnimatedSwitcherTransition.size:
            return SizeTransition(
              sizeFactor: animation,
              fixedCrossAxisSizeFactor: 1,
              child: child,
            );

          case DefaultAnimatedSwitcherTransition.scale:
            return ScaleTransition(
              scale: animation,
              child: child,
            );
        }
      },
      child: child,
    );
  }
}

enum DefaultAnimatedSwitcherTransition {
  fade,
  size,
  scale,
}
