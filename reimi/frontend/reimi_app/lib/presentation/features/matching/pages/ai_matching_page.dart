import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/matching/widgets/user_card.dart';
import 'package:reimi_app/presentation/features/matching/notifiers/ai_matching_notifier.dart';
import 'package:reimi_app/presentation/features/profile/notifiers/profile_detail_notifier.dart';
import 'package:reimi_app/presentation/features/profile/widgets/bottom_action_buttons_bar.dart';
import 'package:reimi_app/presentation/features/profile/widgets/show_rainbow_like_modal_sheet.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_report_page.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';
import 'package:reimi_app/presentation/shared/widgets/text_card.dart';
import 'package:reimi_app/presentation/shared/widgets/weathernews_recommend_card.dart';

class AIMatchingPage extends HookConsumerWidget {
  const AIMatchingPage({super.key});
  static String get routeName => 'ai_matching';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    final notifier = ref.read(aIMatchingNotifierProvider.notifier);
    final profileNotifier = ref.read(profileDetailNotifierProvider.notifier);
    final user =
        ref.watch(aIMatchingNotifierProvider.select((state) => state.user));
    final isLoading = ref
        .watch(aIMatchingNotifierProvider.select((state) => state.isLoading));

    final titleController = useAnimationController(
      duration: const Duration(milliseconds: 600),
    )..forward();

    final userCardController = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );

    final textCardController = useAnimationController(
      duration: const Duration(milliseconds: 650),
    );

    final titleSlide = Tween(
      begin: const Offset(0, -0.2),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: titleController,
        curve: Curves.easeOutCubic,
      ),
    );

    final userCardFade = CurvedAnimation(
      parent: userCardController,
      curve: Curves.easeOut,
    );

    final userCardScale = Tween(begin: 0.85, end: 1.0).animate(
      CurvedAnimation(
        parent: userCardController,
        curve: Curves.easeOutBack,
      ),
    );

    final textCardSlide = Tween(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: textCardController,
        curve: const Interval(
          0.35,
          1.0,
          curve: Curves.easeOut,
        ),
      ),
    );

    useEffect(() {
      Future.microtask(() {
        notifier.init();
      });
      final secCtrltimer = Timer(
        const Duration(milliseconds: 350),
        () => userCardController.forward(),
      );
      final thirdCtrltimer = Timer(
        const Duration(milliseconds: 520),
        () => textCardController.forward(),
      );

      return () {
        secCtrltimer.cancel();
        thirdCtrltimer.cancel();
      };
    }, []);

    return Scaffold(
      body: BackgroundContainerNoon(
        child: SafeArea(
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              if (isLoading) ...[
                const SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ] else if (user == null) ...[
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: Text(
                        t.aIMatchingPage.nullCase,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ),
              ] else ...[
                const Gap(height: 24),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverToBoxAdapter(
                    child: SlideTransition(
                      position: titleSlide,
                      child: FadeTransition(
                        opacity: titleController,
                        child: Column(
                          children: [
                            Text(
                              t.aIMatchingPage.title,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleMedium!.copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              t.aIMatchingPage.subTitle,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleSmall!.copyWith(
                                fontSize: 13,
                                color: Colors.black.withValues(alpha: 0.4),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(height: 20),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverToBoxAdapter(
                    child: FadeTransition(
                      opacity: userCardFade,
                      child: ScaleTransition(
                        scale: userCardScale,
                        child: UserCard(
                          user: user,
                          onTap: null,
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(height: 24),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverToBoxAdapter(
                    child: SlideTransition(
                      position: textCardSlide,
                      child: FadeTransition(
                        opacity: textCardController,
                        child: const SuggestionReasonCard(
                          suggestionReasons: [
                            'あなたとあおいさんは、ウェザーパーソナリティタイプの相性が抜群です（相性度95%）',
                            '同じ「カフェ巡り」と「映画鑑賞」が共通の趣味で、会話が盛り上がりそうです',
                            'あなたが投稿したウェザーリポートの内容から、あおいさんの感性とマッチすると判断しました',
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(height: 24),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverToBoxAdapter(
                    child: SlideTransition(
                      position: textCardSlide,
                      child: FadeTransition(
                        opacity: textCardController,
                        child: const TodayWeatherCompatibilityPointCard(
                          compatibilityPoints: [
                            'お二人とも「カフェ巡り」が晴れの日の定番アクティビティ！今日のおでかけにぴったりです',
                            '晴れの日は外での活動に最適な気温なので、一緒に街を散策するのもおすすめです',
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(height: 24),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverToBoxAdapter(
                    child: WeathernewsRecommendCard(
                      title: t.card.weathernewsRecommend.title1,
                      description: t.card.weathernewsRecommend.description,
                    ),
                  ),
                ),
                const Gap(height: 32),
              ],
            ],
          ),
        ),
      ),
      bottomNavigationBar: user == null || isLoading
          ? null
          : BottomActionButtonsBar(
              leftButtonOnTap: () {
                context.go(WeatherReportPage.routeLocation);
                // profileNotifier.onTapSkippedButton();
              },
              centerButtonOnTap: () {
                showRainbowLikeModalSheet(
                  context: context,
                  notifier: profileNotifier,
                );
              },
              rightButtonOnTap: () async {
                // await profileNotifier.onTapLikeButton(userId);
              },
            ),
    );
  }
}

class SuggestionReasonCard extends StatelessWidget {
  const SuggestionReasonCard({
    super.key,
    required this.suggestionReasons,
  });
  final List<String> suggestionReasons;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    return TextCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              t.aIMatchingPage.section.suggestionReason.title,
              style: theme.textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Column(
            children: suggestionReasons
                .map((proposalReason) =>
                    _SuggestionReasonListTile(proposalReason))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _SuggestionReasonListTile extends StatelessWidget {
  const _SuggestionReasonListTile(this.proposalReason);

  final String proposalReason;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Icon(Icons.circle, size: 6),
          ),
          const SizedBox(width: 4),
          Expanded(
            child: Text(
              proposalReason,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: const Color(0xFF4A5F72),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TodayWeatherCompatibilityPointCard extends StatelessWidget {
  const TodayWeatherCompatibilityPointCard({
    super.key,
    required this.compatibilityPoints,
  });
  final List<String> compatibilityPoints;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    return TextCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              t.aIMatchingPage.section.todayWeatherCompatibilityPoint.title,
              style: theme.textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  theme.colorScheme.secondary.withValues(alpha: 0.15),
                  theme.colorScheme.tertiary.withValues(alpha: 0.15),
                  theme.colorScheme.primary.withValues(alpha: 0.15),
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '今日は晴れ（24°C）',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Column(
            children: compatibilityPoints
                .map((compatibilityPoint) =>
                    _TodayWeatherCompatibilityPointListTile(compatibilityPoint))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _TodayWeatherCompatibilityPointListTile extends StatelessWidget {
  const _TodayWeatherCompatibilityPointListTile(this.compatibilityPoint);

  final String compatibilityPoint;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Icon(Icons.circle, size: 6),
          ),
          const SizedBox(width: 4),
          Expanded(
            child: Text(
              compatibilityPoint,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: const Color(0xFF4A5F72),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
