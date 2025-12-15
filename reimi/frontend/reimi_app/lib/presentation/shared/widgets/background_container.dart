import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key, required this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF8DC9DD),
            Color(0xFFDDEFF6),
            // Color(0xFFF9FAFB),
          ],
        ),
      ),
      child: child,
    );
  }
}
