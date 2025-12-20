import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reimi_app/presentation/pages/splash/widgets/animated_dot.dart';

class LoadingDots extends HookWidget {
  const LoadingDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (i) => AnimatedDot(delay: i * 200)),
    );
  }
}
