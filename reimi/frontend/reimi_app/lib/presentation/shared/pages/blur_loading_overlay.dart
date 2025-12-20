import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:reimi_app/presentation/pages/splash/widgets/loading_dots.dart';

class BlurLoadingOverlay extends StatelessWidget {
  const BlurLoadingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            color: Colors.black.withValues(alpha: 0.4),
          ),
        ),
        const Center(
          child: LoadingDots(),
        ),
      ],
    );
  }
}
