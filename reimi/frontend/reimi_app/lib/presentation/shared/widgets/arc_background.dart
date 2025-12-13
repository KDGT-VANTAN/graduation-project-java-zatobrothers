import 'package:flutter/material.dart';

// 2つの円弧を背景に表示する再利用可能なウィジェット
// Stack内で直接使用することを想定
class ArcBackground {
  const ArcBackground._();

  static List<Widget> buildArcs({
    required BuildContext context,
    required Color topArcColor,
    required Color bottomArcColor,
    double topOffset = 0.2,
    double rightOffset = 0.3,
    double leftOffset = 0.25,
    double bottomOffset = 0.25,
    double topArcWidth = 60,
    double bottomArcWidth = 50,
    double topArcOpacity = 0.15,
    double bottomArcOpacity = 0.1,
  }) {
    final size = MediaQuery.of(context).size;

    return [
      // 上部右側の円弧
      Positioned(
        top: -size.height * topOffset,
        right: -size.width * rightOffset,
        child: Container(
          width: size.width * 0.8,
          height: size.width * 1.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size.width),
            border: Border.all(
              color: topArcColor.withValues(alpha: topArcOpacity),
              width: topArcWidth,
            ),
          ),
        ),
      ),
      // 下部左側の円弧
      Positioned(
        bottom: -size.height * bottomOffset,
        left: -size.width * leftOffset,
        child: Container(
          width: size.width * 0.7,
          height: size.width * 1.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size.width),
            border: Border.all(
              color: bottomArcColor.withValues(alpha: bottomArcOpacity),
              width: bottomArcWidth,
            ),
          ),
        ),
      ),
    ];
  }
}
