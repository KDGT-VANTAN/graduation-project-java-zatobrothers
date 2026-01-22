import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_report/notifiers/weather_report_notifier.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_report_detail_page.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_report_post_page.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/my_weather_report_page.dart';
import 'package:reimi_app/presentation/features/weather_report/states/weather_report_state.dart';
import 'package:reimi_app/presentation/features/weather_report/widgets/weather_report_card.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/circle_icon_button.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class WeatherReportPage extends HookConsumerWidget {
  const WeatherReportPage({super.key});
  static String get routeName => 'weather_report';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final notifier = ref.read(weatherReportNotifierProvider.notifier);
    final isLoading = ref.watch(
        weatherReportNotifierProvider.select((state) => state.isLoading));
    final weatherReports = ref.watch(
        weatherReportNotifierProvider.select((state) => state.weatherReports));
    final mainController = useAnimationController(
      duration: const Duration(milliseconds: 800),
    )..forward();

    useEffect(() {
      Future.microtask(() {
        notifier.init();
      });

      final subscription = ref.listenManual<WeatherReportState>(
        weatherReportNotifierProvider,
        (prev, next) {
          if (next.errorMessage == null) return;
          AppSnackBar.error(context, next.errorMessage!);
        },
      );

      return subscription.close;
    }, []);

    return Scaffold(
      body: BackgroundContainerNoon(
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: () async {
              await notifier.refresh();
            },
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverAppBar(
                    floating: true,
                    snap: true,
                    centerTitle: false,
                    title: Text(
                      t.weatherReportPage.title,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                    ),
                    actions: [
                      CircleIconButton(
                        icon: const Icon(LineIcons.calendar),
                        onPressed: () {
                          context.push(MyWeatherReportPage.routeLocation);
                        },
                      ),
                    ],
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                ),
                const Gap(height: 4),
                if (isLoading) ...[
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ] else if (weatherReports.isEmpty) ...[
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Text(
                          t.weatherReportPage.isEmptyCase,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  )
                ] else ...[
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return ScaleTransition(
                            scale: Tween(begin: 0.9, end: 1.0).animate(
                              CurvedAnimation(
                                parent: mainController,
                                curve: Curves.easeOutBack,
                              ),
                            ),
                            child: FadeTransition(
                              opacity: mainController,
                              child: WeatherReportCard(
                                weatherReport: weatherReports[index],
                                onTap: () {
                                  context.push(
                                    WeatherReportDetailPage.routeLocation,
                                    extra: {
                                      'reportId': weatherReports[index].reportId
                                    },
                                  );
                                },
                              ),
                            ),
                          );
                        },
                        childCount: weatherReports.length,
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
                  const Gap(height: 24),
                ],
              ],
            ),
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
  }
}
