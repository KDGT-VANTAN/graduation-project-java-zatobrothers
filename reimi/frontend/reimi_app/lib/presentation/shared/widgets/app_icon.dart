import 'package:flutter/material.dart';
import 'package:reimi_app/gen/assets.gen.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
    required this.width,
    required this.height,
  });
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            blurRadius: 20,
          )
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Assets.images.logo.appIcon.image(
        fit: BoxFit.cover,
      ),
    );
  }
}
