import 'package:flutter/material.dart';

class CircleBadge extends StatelessWidget {
  const CircleBadge({
    super.key,
    required this.child,
    this.color = Colors.white,
    required this.size,
  });
  final Widget child;
  final Color color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: child,
    );
  }
}
