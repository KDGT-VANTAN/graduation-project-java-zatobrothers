import 'package:flutter/material.dart';

class AppModalSheet extends StatelessWidget {
  const AppModalSheet({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.fromLTRB(20, 20, 20, 0),
    this.backgroundColor = Colors.white,
    this.borderRadius = 20,
  });

  final Widget child;
  final EdgeInsets padding;
  final Color backgroundColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(borderRadius),
        ),
      ),
      child: SafeArea(
        top: false,
        child: child,
      ),
    );
  }
}
