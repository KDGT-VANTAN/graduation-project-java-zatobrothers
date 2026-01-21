import 'package:flutter/material.dart';

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