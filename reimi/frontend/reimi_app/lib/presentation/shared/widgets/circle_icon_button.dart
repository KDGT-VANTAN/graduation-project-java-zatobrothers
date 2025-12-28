import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor,
  });

  final Widget icon;
  final void Function()? onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor ?? Colors.white.withValues(alpha: 0.6),
      child: IconButton(
        icon: icon,
        color: Colors.grey[700],
        onPressed: onPressed,
      ),
    );
  }
}
