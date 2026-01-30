import 'package:flutter/material.dart';

class AxisScoreBar extends StatelessWidget {
  final String leftLabel;
  final String rightLabel;
  final int score; // -8 ~ +8

  const AxisScoreBar({
    super.key,
    required this.leftLabel,
    required this.rightLabel,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // 0.0 ~ 1.0（左右それぞれの最大幅に対する割合）
    final double ratio = (score.abs() / 8).clamp(0, 1);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(leftLabel, style: theme.textTheme.titleSmall),
            const Spacer(),
            Text(rightLabel, style: theme.textTheme.titleSmall),
          ],
        ),
        const SizedBox(height: 8),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 22,
              decoration: BoxDecoration(
                color: const Color(0xFFEAECEE),
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: score < 0
                        ? FractionallySizedBox(
                            widthFactor: ratio,
                            alignment: Alignment.centerRight,
                            child: _bar(theme.colorScheme.primary),
                          )
                        : const SizedBox.shrink(),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: score > 0
                        ? FractionallySizedBox(
                            widthFactor: ratio,
                            alignment: Alignment.centerLeft,
                            child: _bar(theme.colorScheme.secondary),
                          )
                        : const SizedBox.shrink(),
                  ),
                ),
              ],
            ),
            Text(
              score.toString(),
              style: theme.textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _bar(Color color) {
    return Container(
      height: 22,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: color,
      ),
    );
  }
}
