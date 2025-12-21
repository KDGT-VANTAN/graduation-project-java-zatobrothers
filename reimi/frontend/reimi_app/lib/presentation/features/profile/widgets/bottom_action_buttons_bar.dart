import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/presentation/shared/widgets/circle_button.dart';

class BottomActionButtonsBar extends StatelessWidget {
  const BottomActionButtonsBar({
    super.key,
    required this.leftButtonOnTap,
    required this.centerButtonOnTap,
    required this.rightButtonOnTap,
  });
  final void Function() leftButtonOnTap;
  final void Function() centerButtonOnTap;
  final void Function() rightButtonOnTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFDDEFF6),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 12,
            right: 20,
            left: 20,
            bottom: 4,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleButton(
                onTap: leftButtonOnTap,
                child: const Icon(
                  LineIcons.times,
                  size: 32,
                ),
              ),
              CircleButton(
                size: 72,
                onTap: centerButtonOnTap,
                gradient: earthToneRainbowGradient.withOpacity(0.6),
                child: Assets.images.items.rainbowLike.image(
                  height: 48,
                  width: 48,
                ),
              ),
              CircleButton(
                onTap: rightButtonOnTap,
                child: const Icon(
                  LineIcons.thumbsUp,
                  size: 32,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const Gradient earthToneRainbowGradient = SweepGradient(
  center: Alignment.center,
  startAngle: 0.0,
  endAngle: 6.283185307179586, // 2π
  colors: [
    Color(0xFFB56576), // ダスティローズ（赤）
    Color(0xFFD4A373), // サンドオレンジ（土）
    Color(0xFFE9C46A), // ウォームイエロー
    Color(0xFF7F9C8E), // セージグリーン
    Color(0xFF5F8D9C), // ダスティブルー
    Color(0xFF6D597A), // モーブパープル
    Color(0xFFB56576), // 戻し
  ],
);
