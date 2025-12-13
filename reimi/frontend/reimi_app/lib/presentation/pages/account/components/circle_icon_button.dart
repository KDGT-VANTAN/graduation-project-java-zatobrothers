import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final Widget icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white.withValues(alpha: 0.6),
      child: IconButton(
        icon: icon,
        color: Colors.grey[700],
        onPressed: onPressed,
      ),
    );
  }
}
