import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_report/notifiers/weather_report_notifier.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_report_detail_page.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_report_post_page.dart';
import 'package:reimi_app/presentation/features/weather_report/widgets/weather_report_card.dart';
import 'package:reimi_app/presentation/shared/pages/error_page.dart';
import 'package:reimi_app/presentation/shared/pages/loading_page.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class WeatherReportPage extends ConsumerWidget {
  const WeatherReportPage({super.key});
  static String get routeName => 'weather_report';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final state = ref.watch(weatherReportNotifierProvider);
    return state.when(
      data: (value) {
        return Scaffold(
          body: BackgroundContainerNoon(
            child: SafeArea(
              child: CustomScrollView(
                slivers: [
                  const Gap(height: 16),
                  SliverSectionTitle(
                    title: t.weatherReportPage.sectionTitle,
                    paddingHorizontal: 16,
                  ),
                  const Gap(height: 8),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final weatherReport = value.weatherReports[index];
                          return WeatherReportCard(
                            weatherReport: weatherReport,
                            onTap: () {
                              context.push(
                                WeatherReportDetailPage.routeLocation,
                                extra: {'reportId': weatherReport.reportId},
                              );
                            },
                          );
                        },
                        childCount: value.weatherReports.length,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: 0.75,
                      ),
                    ),
                  ),
                  const Gap(height: 32),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
            backgroundColor: theme.colorScheme.primary,
            onPressed: () {
              context.push(WeatherReportPostPage.routeLocation);
            },
            child: const Icon(
              LineIcons.camera,
              size: 28,
              color: Colors.white,
            ),
          ),
        );
      },
      error: (e, s) {
        return ErrorPage(message: e.toString(), onRetry: null);
      },
      loading: () {
        return const LoadingPage();
      },
    );
  }
}
