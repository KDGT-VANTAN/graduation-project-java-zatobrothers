import 'package:flutter/material.dart';

class AxisFeatureCard extends StatelessWidget {
  final String title;
  final String code;
  final String description;

  const AxisFeatureCard({
    super.key,
    required this.title,
    required this.code,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFE9F7FB),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: theme.textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(
                code,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: theme.textTheme.bodyMedium!.copyWith(
              fontSize: 13,
              color: const Color(0xFF4A5F72),
            ),
          ),
        ],
      ),
    );
  }
}
