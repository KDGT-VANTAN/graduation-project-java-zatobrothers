import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/core/theme/custom_colors.dart';
import 'package:reimi_app/presentation/shared/widgets/text_card.dart';
import 'package:url_launcher/url_launcher.dart';

class WeathernewsRecommendCard extends StatelessWidget {
  const WeathernewsRecommendCard({
    super.key,
    required this.title,
    required this.description,
    this.padding,
  });
  final String title;
  final String description;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextCard(
      padding: padding,
      colors: [
        weatherNewsColor.withValues(alpha: 0.2),
        theme.colorScheme.primary.withValues(alpha: 0.2),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: theme.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 56,
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: weatherNewsColor,
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.18),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: openWeatherNewsAppStore,
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: const StadiumBorder(),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'ウェザーニュースで詳しい天気を見る',
                      style: theme.textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      LineIcons.alternateExternalLink,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> openWeatherNewsAppStore() async {
  final uri = Uri.parse(
    'https://apps.apple.com/jp/search?term=ウェザーニュース',
  );

  if (await canLaunchUrl(uri)) {
    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  }
}
