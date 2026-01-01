import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/core/extensions/datetime_extensions.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/feeling_type_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/forecast_type_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/weather_type_extension.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_report/notifiers/weather_report_detail_notifier.dart';
import 'package:reimi_app/presentation/features/weather_report/widgets/show_comment_modal_sheet.dart';
import 'package:reimi_app/presentation/shared/pages/error_page.dart';
import 'package:reimi_app/presentation/shared/pages/loading_page.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class WeatherReportDetailPage extends ConsumerWidget {
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
    final state = ref.watch(weatherReportDetailNotifierProvider(reportId));
    return state.when(
      data: (value) {
        if (value.weatherReport == null) {
          return const Center(
            child: Text('表示できる投稿が見つかりません。'),
          );
        }
        return Scaffold(
          body: BackgroundContainer(
            child: SafeArea(
              child: CustomScrollView(
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
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverToBoxAdapter(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: const Color(0xFF7FBEC6),
                            backgroundImage: value.weatherReport!.mainPhotoUrl
                                .toImageProvider(),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              value.weatherReport!.userName,
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
                                '${value.weatherReport!.postAt.toSlashDate} ${value.weatherReport!.postAt.toHHmmTimeDisplay()}',
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: const Color(0xFF6B7280),
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                // TODO: 仮実装
                                '東京都渋谷区',
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: const Color(0xFF6B7280),
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
                            image: value.weatherReport!.url.toImageProvider(),
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
                              count: value.weatherReport!.likeCount.toString(),
                              color: const Color(0xFFF28B82),
                              onTap: () {},
                            ),
                            const SizedBox(width: 10),
                            _ReactionItem(
                              icon: LineIcons.comment,
                              count:
                                  value.weatherReport!.commentCount.toString(),
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
                          value.weatherReport!.comment,
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
                              value: value.weatherReport!.weatherType
                                  .displayName(context),
                            ),
                            const Divider(
                              height: 24,
                              thickness: 0.6,
                            ),
                            _InfoRow(
                              label: t.weatherReportDetailPage.label.feeling,
                              value: value.weatherReport!.feelingType
                                  .displayName(context),
                            ),
                            const Divider(
                              height: 24,
                              thickness: 0.6,
                            ),
                            _InfoRow(
                              label: t.weatherReportDetailPage.label.forecast,
                              value: value.weatherReport!.forecastType
                                  .displayName(context),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
