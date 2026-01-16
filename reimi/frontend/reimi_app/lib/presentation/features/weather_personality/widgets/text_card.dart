import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  const TextCard({
    super.key,
    required this.child,
    this.color,
    this.colors,
  });
  final Widget? child;
  final Color? color;
  final List<Color>? colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: color ?? const Color(0xFFE9F7FB),
        borderRadius: BorderRadius.circular(24),
        gradient: colors != null
            ? LinearGradient(
                colors: colors!,
              )
            : null,
      ),
      child: child,
    );
  }
}
