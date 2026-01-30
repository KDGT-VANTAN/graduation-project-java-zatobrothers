import 'package:flutter/material.dart';
import 'package:reimi_app/core/extensions/value_objects/weather_personality_axis_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/weather_personality_polarity_extension.dart';
import 'package:reimi_app/domain/read_models/axis_feature_read_model.dart';

class AxisFeatureCard extends StatelessWidget {
  const AxisFeatureCard({
    super.key,
    required this.axisFeature,
  });
  final AxisFeatureReadModel axisFeature;

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
                axisFeature.axis.displayName(context),
                style: theme.textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(
                axisFeature.polarity.displayName(context),
                style: theme.textTheme.titleSmall!.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            axisFeature.description,
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
