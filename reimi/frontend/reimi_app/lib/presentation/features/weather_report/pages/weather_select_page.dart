import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/domain/value_objects/weather_type.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_report/notifiers/weather_report_post_notifier.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/feeling_select_page.dart';
import 'package:reimi_app/presentation/features/weather_report/widgets/option_tile.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container.dart';
import 'package:reimi_app/presentation/shared/widgets/section_title.dart';

class WeatherSelectPage extends ConsumerWidget {
  const WeatherSelectPage({super.key});
  static String get routeName => 'weather_select';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherReportPostNotifierProvider.notifier);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          t.weatherSelectPage.title,
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
      body: BackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                SectionTitle(
                  title: t.weatherSelectPage.sectionTitle,
                  color: Colors.black87.withValues(alpha: 0.7),
                ),
                const SizedBox(height: 16),
                OptionTile(
                  label: t.kEnum.weatherType.clearStar,
                  onTap: () {
                    notifier.updateWeatherType(WeatherType.clearStar);
                    context.push(FeelingSelectPage.routeLocation);
                  },
                ),
                const SizedBox(height: 16),
                OptionTile(
                  label: t.kEnum.weatherType.faintStar,
                  onTap: () {
                    notifier.updateWeatherType(WeatherType.faintStar);
                    context.push(FeelingSelectPage.routeLocation);
                  },
                ),
                const SizedBox(height: 16),
                OptionTile(
                  label: t.kEnum.weatherType.noStar,
                  onTap: () {
                    notifier.updateWeatherType(WeatherType.noStar);
                    context.push(FeelingSelectPage.routeLocation);
                  },
                ),
                const SizedBox(height: 16),
                OptionTile(
                  label: t.kEnum.weatherType.drizzle,
                  onTap: () {
                    notifier.updateWeatherType(WeatherType.drizzle);
                    context.push(FeelingSelectPage.routeLocation);
                  },
                ),
                const SizedBox(height: 16),
                OptionTile(
                  label: t.kEnum.weatherType.lightRain,
                  onTap: () {
                    notifier.updateWeatherType(WeatherType.lightRain);
                    context.push(FeelingSelectPage.routeLocation);
                  },
                ),
                const SizedBox(height: 16),
                OptionTile(
                  label: t.kEnum.weatherType.rain,
                  onTap: () {
                    notifier.updateWeatherType(WeatherType.rain);
                    context.push(FeelingSelectPage.routeLocation);
                  },
                ),
                const SizedBox(height: 16),
                OptionTile(
                  label: t.kEnum.weatherType.heavyRain,
                  onTap: () {
                    notifier.updateWeatherType(WeatherType.heavyRain);
                    context.push(FeelingSelectPage.routeLocation);
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
