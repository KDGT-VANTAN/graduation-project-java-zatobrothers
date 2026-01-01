import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedDot extends HookWidget {
  final int delay;
  const AnimatedDot({super.key, required this.delay});

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 1000),
    );

    final anim = Tween<double>(begin: -5, end: 5).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeInOut),
    );

    useEffect(() {
      final timer = Timer(
        Duration(milliseconds: delay),
        () => controller.repeat(reverse: true),
      );

      return timer.cancel;
    }, []);

    return AnimatedBuilder(
      animation: anim,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, anim.value),
          child: Opacity(
            opacity: 0.5 + (anim.value.abs() / 10),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 6),
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
        );
      },
    );
  }
}
