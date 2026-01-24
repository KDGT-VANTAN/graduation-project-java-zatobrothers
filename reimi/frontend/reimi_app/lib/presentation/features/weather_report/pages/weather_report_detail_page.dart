import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/core/extensions/datetime_extensions.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/feeling_type_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/forecast_type_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/weather_type_extension.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_report/notifiers/weather_report_detail_notifier.dart';
import 'package:reimi_app/presentation/features/weather_report/states/weather_report_detail_state.dart';
import 'package:reimi_app/presentation/features/weather_report/widgets/show_comment_modal_sheet.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class WeatherReportDetailPage extends HookConsumerWidget {
  static String get routeName => 'weather_report_detail';
  static String get routeLocation => '/$routeName';
  const WeatherReportDetailPage({
    super.key,
    required this.reportId,
  });
  final String reportId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final notifier = ref.read(weatherReportDetailNotifierProvider.notifier);
    final weatherReport = ref.watch(weatherReportDetailNotifierProvider
        .select((state) => state.weatherReport));
    final isLoading = ref.watch(
        weatherReportDetailNotifierProvider.select((state) => state.isLoading));
    // コメントアウトしているReportBodyあたりを参照 ↓↓
    // final isMyReport = ref.watch(weatherReportDetailNotifierProvider
    //     .select((state) => state.isMyReport));

    useEffect(() {
      Future.microtask(() {
        notifier.init(reportId);
      });

      final subscription = ref.listenManual<WeatherReportDetailState>(
        weatherReportDetailNotifierProvider,
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
              await notifier.refresh(reportId);
            },
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverAppBar(
                  pinned: true,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: Text(
                    t.weatherReportDetailPage.title,
                    style: theme.textTheme.titleMedium!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
                if (isLoading) ...[
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ] else if (weatherReport == null) ...[
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Text(
                          t.weatherReportDetailPage.nullCase,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),
                ] else ...[
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverToBoxAdapter(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: const Color(0xFF7FBEC6),
                            backgroundImage:
                                weatherReport.mainPhotoUrl.toImageProvider(),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              weatherReport.userName,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF1F2937),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '${weatherReport.createdAt.toSlashDate} ${weatherReport.createdAt.toHHmmTimeDisplay()}',
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: const Color(0xFF1F2937),
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                // TODO: 仮実装
                                '東京都渋谷区',
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: const Color(0xFF1F2937),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(height: 16),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverToBoxAdapter(
                      child: Container(
                        height: 260,
                        decoration: BoxDecoration(
                          color: const Color(0xFF9ED7EB),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image(
                            image: weatherReport.url.toImageProvider(),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 12),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverToBoxAdapter(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _ReactionItem(
                              icon: LineIcons.heart,
                              count: weatherReport.likeCount.toString(),
                              color: const Color(0xFFF28B82),
                              onTap: () {},
                            ),
                            const SizedBox(width: 10),
                            _ReactionItem(
                              icon: LineIcons.comment,
                              count: weatherReport.commentCount.toString(),
                              color: const Color(0xFF7FBEC6),
                              onTap: () {
                                // TODO: 投稿コメントの仕様を決める
                                showCommentModalSheet(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 12),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverToBoxAdapter(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE9F8FC),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          weatherReport.comment,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            height: 1.6,
                            color: const Color(0xFF1F2937),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 16),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverToBoxAdapter(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE9F8FC),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            _InfoRow(
                              label: t.weatherReportDetailPage.label.weather,
                              value: weatherReport.weatherType
                                  .displayName(context),
                            ),
                            const Divider(
                              height: 24,
                              thickness: 0.6,
                            ),
                            _InfoRow(
                              label: t.weatherReportDetailPage.label.feeling,
                              value: weatherReport.feelingType
                                  .displayName(context),
                            ),
                            const Divider(
                              height: 24,
                              thickness: 0.6,
                            ),
                            _InfoRow(
                              label: t.weatherReportDetailPage.label.forecast,
                              value: weatherReport.forecastType
                                  .displayName(context),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// TODO: 
// 自分の投稿の時だけ背景デザインを夜パターンに変更すると、
// マイウェザーリポート画面から遷移する時の違和感がなくなりそう
// class ReportBody extends StatelessWidget {
//   const ReportBody({
//     super.key,
//     required this.isMyReport,
//     required this.child,
//   });

//   final bool isMyReport;
//   final Widget? child;

//   @override
//   Widget build(BuildContext context) {
//     if (isMyReport) {
//       return BackgroundContainerNight(child: child);
//     } else {
//       return BackgroundContainerNoon(child: child);
//     }
//   }
// }

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.label,
    required this.value,
  });
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Text(
          label,
          style: theme.textTheme.labelMedium!.copyWith(
            color: const Color(0xFF6B7280),
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: theme.textTheme.labelMedium!.copyWith(
            fontWeight: FontWeight.w600,
            color: const Color(0xFF1F2937),
          ),
        ),
      ],
    );
  }
}

class _ReactionItem extends StatelessWidget {
  const _ReactionItem({
    required this.icon,
    required this.count,
    required this.color,
    required this.onTap,
  });
  final IconData icon;
  final String count;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Icon(icon, color: color),
        ),
        const SizedBox(width: 4),
        Text(
          count,
          style: theme.textTheme.labelMedium!.copyWith(
            fontWeight: FontWeight.w600,
            color: const Color(0xFF1F2937).withValues(alpha: 0.8),
          ),
        ),
      ],
    );
  }
}
