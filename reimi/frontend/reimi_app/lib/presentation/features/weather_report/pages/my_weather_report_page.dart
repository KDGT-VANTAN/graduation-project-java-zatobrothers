import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/extensions/datetime_extensions.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/domain/read_models/weather_report_read_model.dart';
import 'package:reimi_app/presentation/features/weather_report/notifiers/my_weather_report_notifier.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_report_detail_page.dart';
import 'package:reimi_app/presentation/features/weather_report/states/my_weather_report_state.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_night.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class MyWeatherReportPage extends HookConsumerWidget {
  const MyWeatherReportPage({super.key});
  static String get routeName => 'my_weather_report';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final notifier = ref.read(myWeatherReportNotifierProvider.notifier);
    final isLoading = ref.watch(
        myWeatherReportNotifierProvider.select((state) => state.isLoading));
    final weatherReports = ref.watch(myWeatherReportNotifierProvider
        .select((state) => state.weatherReports));

    final scrollController = useScrollController();

    useEffect(() {
      Future.microtask(() {
        notifier.init();
      });

      final subscription = ref.listenManual<MyWeatherReportState>(
        myWeatherReportNotifierProvider,
        (prev, next) {
          if (next.errorMessage == null) return;
          AppSnackBar.error(context, next.errorMessage!);
        },
      );

      return subscription.close;
    }, []);

    final grouped = groupByMonth(weatherReports);
    final months = grouped.keys.toList()..sort((a, b) => a.compareTo(b));

    useEffect(() {
      if (months.isEmpty) return;

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!scrollController.hasClients) return;

        scrollController.jumpTo(
          scrollController.position.maxScrollExtent,
        );
      });

      return null;
    }, [months]);

    return Scaffold(
      body: BackgroundContainerNight(
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: () async {
              await notifier.refresh();
            },
            child: CustomScrollView(
              controller: scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverAppBar(
                  floating: true,
                  snap: true,
                  automaticallyImplyLeading: false,
                  leading: GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    t.myWeatherReportPage.title,
                    style: theme.textTheme.titleMedium!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
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
                          t.myWeatherReportPage.isEmptyCase,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ] else ...[
                  for (final month in months) ...[
                    _MonthHeader(month),
                    const Gap(height: 8),
                    const _WeekdayHeader(),
                    const Gap(height: 10),
                    _CalendarGrid(
                      month: month,
                      days: grouped[month]!,
                      reports: weatherReports,
                    ),
                    const Gap(height: 12),
                  ],
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MonthHeader extends StatelessWidget {
  const _MonthHeader(this.date);

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverToBoxAdapter(
        child: Text(
          date.toJapaneseDateyyyyMM,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _WeekdayHeader extends StatelessWidget {
  const _WeekdayHeader();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context).myWeatherReportPage.weekdays;
    final weekdays = [
      t.sunday,
      t.monday,
      t.tuesday,
      t.wednesday,
      t.thursday,
      t.friday,
      t.saturday,
    ];

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: weekdays
              .map(
                (e) => Expanded(
                  child: Center(
                    child: Text(
                      e,
                      style: theme.textTheme.titleSmall!.copyWith(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

Map<DateTime, List<DateTime>> groupByMonth(
  List<WeatherReportReadModel> reports,
) {
  if (reports.isEmpty) {
    return {};
  }

  DateTime normalize(DateTime d) => DateTime(d.year, d.month, d.day);
  DateTime monthKey(DateTime d) => DateTime(d.year, d.month);
  final today = normalize(DateTime.now());

  // report を日付キーで Map 化
  final reportDates = {
    for (final r in reports) normalize(r.createdAt): r,
  };

  final oldest = reportDates.keys.reduce(
    (a, b) => a.isBefore(b) ? a : b,
  );

  final result = <DateTime, List<DateTime>>{};

  // 月単位でループ
  var currentMonth = monthKey(oldest);

  while (!currentMonth.isAfter(today)) {
    final nextMonth = DateTime(currentMonth.year, currentMonth.month + 1);

    final days = <DateTime>[];
    var day = currentMonth;

    while (day.isBefore(nextMonth) && !day.isAfter(today)) {
      // 最古日より前は除外
      if (!day.isBefore(oldest)) {
        days.add(day);
      }
      day = day.add(const Duration(days: 1));
    }

    result[currentMonth] = days;
    currentMonth = nextMonth;
  }

  return result;
}

class _CalendarGrid extends StatelessWidget {
  const _CalendarGrid({
    required this.month,
    required this.days,
    required this.reports,
  });

  final DateTime month;
  final List<DateTime> days;
  final List<WeatherReportReadModel> reports;

  @override
  Widget build(BuildContext context) {
    final reportMap = {
      for (final r in reports)
        DateTime(
          r.createdAt.year,
          r.createdAt.month,
          r.createdAt.day,
        ): r,
    };

    final firstDayOfMonth = DateTime(month.year, month.month, 1);
    final daysInMonth = DateUtils.getDaysInMonth(month.year, month.month);

// 日曜始まりオフセット
    final leadingEmptyCount = firstDayOfMonth.weekday % 7;

    final totalCells = leadingEmptyCount + daysInMonth;

    return SliverPadding(
      padding: const EdgeInsets.all(8),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            if (index < leadingEmptyCount) {
              return const SizedBox.shrink();
            }

            final day = index - leadingEmptyCount + 1;
            final date = DateTime(month.year, month.month, day);
            final report = reportMap[date];

            return _CalendarDayCell(
              date: date,
              report: report,
            );
          },
          childCount: totalCells,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
      ),
    );
  }
}

class _CalendarDayCell extends StatelessWidget {
  const _CalendarDayCell({
    required this.date,
    this.report,
  });

  final DateTime date;
  final WeatherReportReadModel? report;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isToday = DateUtils.isSameDay(date, DateTime.now());

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: report == null
            ? null
            : () {
                context.push(
                  WeatherReportDetailPage.routeLocation,
                  extra: {'reportId': report!.id},
                );
              },
        child: Container(
          color: const Color(0xFF3F566B),
          child: Stack(
            children: [
              if (report != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image(
                    image: report!.url.toImageProvider(),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              Positioned(
                top: 6,
                left: 6,
                child: IgnorePointer(
                  child: Text(
                    '${date.day}',
                    style: theme.textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: report != null
                          ? const [
                              Shadow(
                                blurRadius: 4,
                                color: Colors.black54,
                              ),
                            ]
                          : null,
                    ),
                  ),
                ),
              ),
              if (isToday)
                Positioned(
                  top: 4,
                  right: 4,
                  child: IgnorePointer(
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
