import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/domain/value_objects/forecast_type.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_report/notifiers/weather_report_post_notifier.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_report_post_page.dart';
import 'package:reimi_app/presentation/features/weather_report/widgets/option_tile.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/section_title.dart';

class ForecastSelectPage extends ConsumerWidget {
  const ForecastSelectPage({super.key});
  static String get routeName => 'forecast_select';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherReportPostNotifierProvider.notifier);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          t.forecastSelectPage.title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.transparent,
      body: BackgroundContainerNoon(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                SectionTitle(
                  title: t.forecastSelectPage.sectionTitle,
                  color: Colors.black87.withValues(alpha: 0.7),
                ),
                const SizedBox(height: 16),
                OptionTile(
                  label: t.kEnum.forecastType.noChange,
                  onTap: () {
                    notifier.updateForecastType(ForecastType.noChange);
                    context.go(WeatherReportPostPage.routeLocation);
                  },
                ),
                const SizedBox(height: 16),
                OptionTile(
                  label: t.kEnum.forecastType.improving,
                  onTap: () {
                    notifier.updateForecastType(ForecastType.improving);
                    context.go(WeatherReportPostPage.routeLocation);
                  },
                ),
                const SizedBox(height: 16),
                OptionTile(
                  label: t.kEnum.forecastType.deteriorating,
                  onTap: () {
                    notifier.updateForecastType(ForecastType.deteriorating);
                    context.go(WeatherReportPostPage.routeLocation);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
