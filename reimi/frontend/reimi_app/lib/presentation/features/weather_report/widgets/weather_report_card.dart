import 'package:flutter/material.dart';
import 'package:reimi_app/core/extensions/datetime_extensions.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/data/models/weather_report_simple_model.dart';

class WeatherReportCard extends StatelessWidget {
  const WeatherReportCard({
    super.key,
    required this.weatherReport,
    required this.onTap,
  });

  final WeatherReportSimpleModel weatherReport;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF8FD0E8),
                Color(0xFFBFE8F2),
              ],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Image(
                  image: weatherReport.url.toImageProvider(),
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Icon(
                        Icons.cloud,
                        size: 48,
                        color: Colors.white.withValues(alpha: 0.9),
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                color: const Color(0xFFE9F7FB),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      weatherReport.createdAt.toRelativeDateTime(),
                      style: theme.textTheme.bodySmall!.copyWith(
                        fontSize: 10,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      weatherReport.comment,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall!.copyWith(
                        fontSize: 12,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
