import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/domain/value_objects/feeling_type.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_report/notifiers/weather_report_post_notifier.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/forecast_select_page.dart';
import 'package:reimi_app/presentation/features/weather_report/widgets/option_tile.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/section_title.dart';

class FeelingSelectPage extends ConsumerWidget {
  const FeelingSelectPage({super.key});
  static String get routeName => 'feeling_select';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherReportPostNotifierProvider.notifier);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          t.feelingSelectPage.title,
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
                  title: t.feelingSelectPage.sectionTitle,
                  color: Colors.black87.withValues(alpha: 0.7),
                ),
                const SizedBox(height: 16),
                OptionTile(
                  label: t.kEnum.feelingType.freezing,
                  onTap: () {
                    notifier.updateFeelingType(FeelingType.freezing);
                    context.push(ForecastSelectPage.routeLocation);
                  },
                ),
                const SizedBox(height: 16),
                OptionTile(
                  label: t.kEnum.feelingType.cold,
                  onTap: () {
                    notifier.updateFeelingType(FeelingType.cold);
                    context.push(ForecastSelectPage.routeLocation);
                  },
                ),
                const SizedBox(height: 16),
                OptionTile(
                  label: t.kEnum.feelingType.comfortable,
                  onTap: () {
                    notifier.updateFeelingType(FeelingType.comfortable);
                    context.push(ForecastSelectPage.routeLocation);
                  },
                ),
                const SizedBox(height: 16),
                OptionTile(
                  label: t.kEnum.feelingType.warm,
                  onTap: () {
                    notifier.updateFeelingType(FeelingType.warm);
                    context.push(ForecastSelectPage.routeLocation);
                  },
                ),
                const SizedBox(height: 16),
                OptionTile(
                  label: t.kEnum.feelingType.notApplicable,
                  onTap: () {
                    notifier.updateFeelingType(FeelingType.notApplicable);
                    context.push(ForecastSelectPage.routeLocation);
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
