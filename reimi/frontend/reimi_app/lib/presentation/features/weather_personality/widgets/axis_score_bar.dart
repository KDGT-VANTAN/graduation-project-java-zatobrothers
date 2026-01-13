import 'package:flutter/material.dart';

class AxisScoreBar extends StatelessWidget {
  final String leftLabel;
  final String rightLabel;
  final int score; // -8 ~ +8 想定

  const AxisScoreBar({
    super.key,
    required this.leftLabel,
    required this.rightLabel,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final double normalized = score / 16;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              leftLabel,
              style: theme.textTheme.titleSmall!.copyWith(
                fontSize: 12,
              ),
            ),
            const Spacer(),
            Text(
              rightLabel,
              style: theme.textTheme.titleSmall!.copyWith(
                fontSize: 12,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Stack(
          children: [
            Container(
              height: 22,
              decoration: BoxDecoration(
                color: const Color(0xFFEAECEE),
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            FractionallySizedBox(
              widthFactor: normalized,
              child: Container(
                height: 22,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  gradient: LinearGradient(
                    colors: [
                      theme.colorScheme.secondary,
                      theme.colorScheme.primary,
                    ],
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Center(
                child: Text(
                  displayScore(score),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

String displayScore(int score) {
  if (score == 0) {
    return '0';
  } else if (score > 0) {
    return '+$score';
  } else if (score < 0) {
    return '-$score';
  } else {
    return score.toString();
  }
}
