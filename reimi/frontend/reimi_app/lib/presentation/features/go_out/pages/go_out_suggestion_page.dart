import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/extensions/datetime_extensions.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/chat/pages/chat_page.dart';
import 'package:reimi_app/presentation/features/go_out/notifiers/go_out_suggestion_notifier.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';
import 'package:reimi_app/presentation/shared/widgets/weathernews_recommend_card.dart';

class GoOutSuggestionPage extends HookConsumerWidget {
  const GoOutSuggestionPage({super.key});
  static String get routeName => 'go_out_suggestion';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    final notifier = ref.read(goOutSuggestionNotifierProvider.notifier);
    final suggestion = ref.watch(
        goOutSuggestionNotifierProvider.select((state) => state.suggestion));
    final isLoading = ref.watch(
        goOutSuggestionNotifierProvider.select((state) => state.isLoading));

    final titleController = useAnimationController(
      duration: const Duration(milliseconds: 600),
    )..forward();

    final infoCardController = useAnimationController(
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

    final infoCardFade = CurvedAnimation(
      parent: infoCardController,
      curve: Curves.easeOut,
    );

    final infoCardScale = Tween(begin: 0.85, end: 1.0).animate(
      CurvedAnimation(
        parent: infoCardController,
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
        () => infoCardController.forward(),
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
          child: RefreshIndicator(
            onRefresh: () async {
              await notifier.refresh();
            },
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
                ] else if (suggestion == null) ...[
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Text(
                          t.goOutSuggestionPage.nullCase,
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
                          child: Text(
                            t.goOutSuggestionPage.title(name: 'さくら'),
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleMedium!.copyWith(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 20),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverToBoxAdapter(
                      child: FadeTransition(
                        opacity: infoCardFade,
                        child: ScaleTransition(
                          scale: infoCardScale,
                          child: _InfoCard(
                            date: suggestion.date,
                            place: suggestion.place,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 24),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverToBoxAdapter(
                      child: SlideTransition(
                        position: textCardSlide,
                        child: FadeTransition(
                          opacity: textCardController,
                          child: Column(
                            children: [
                              Text(
                                t.goOutSuggestionPage.section.suggestionText,
                                style: theme.textTheme.titleSmall!.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 12),
                              _SuggestionCard(
                                title: suggestion.goOutPlan.title,
                                description: suggestion.goOutPlan.description,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 24),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverToBoxAdapter(
                      child: SlideTransition(
                        position: textCardSlide,
                        child: FadeTransition(
                          opacity: textCardController,
                          child: _WeatherDetailCard(
                            weatherTrendency: suggestion.weatherTrendency,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 32),
                  const SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverToBoxAdapter(
                      child: _MessageButton(name: 'さくら'),
                    ),
                  ),
                  const Gap(height: 20),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverToBoxAdapter(
                      child: _BackButton(),
                    ),
                  ),
                  const Gap(height: 40),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({
    required this.date,
    required this.place,
  });
  final DateTime date;
  final String place;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t.goOutSuggestionPage.section.goOutInformation.date,
            style: theme.textTheme.titleSmall!.copyWith(
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            date.toJapaneseDateWithWeekday,
            style: theme.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            t.goOutSuggestionPage.section.goOutInformation.place,
            style: theme.textTheme.titleSmall!.copyWith(
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            place,
            style: theme.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            t.goOutSuggestionPage.section.goOutInformation.expectedWeather,
            style: theme.textTheme.titleSmall!.copyWith(
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Image(
                image: 'https://tpf.weathernews.jp/wxicon/152/300.png'
                    .toImageProvider(),
                height: 20,
              ),
              const SizedBox(width: 8),
              Text(
                '雨（18°C）',
                style: theme.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SuggestionCard extends StatelessWidget {
  const _SuggestionCard({
    required this.title,
    required this.description,
  });
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.6),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color(0xFFF2994A),
                  Color(0xFFF2C94C),
                ],
              ),
            ),
            child: Center(
              child: Text(
                '💡',
                style: theme.textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleLarge!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  description,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _WeatherDetailCard extends StatelessWidget {
  const _WeatherDetailCard({required this.weatherTrendency});
  final String weatherTrendency;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t.goOutSuggestionPage.section.weatherTrendency,
            style: theme.textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            weatherTrendency,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 20),
          WeathernewsRecommendCard(
            padding: const EdgeInsets.all(18),
            title: t.card.weathernewsRecommend.title2,
            description: t.card.weathernewsRecommend.description,
          ),
        ],
      ),
    );
  }
}

class _MessageButton extends StatelessWidget {
  const _MessageButton({required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Center(
        child: Text(
          t.button.suggestGoOut,
          style: theme.textTheme.labelLarge!.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        context.go(ChatPage.routeLocation);
      },
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.7),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Center(
          child: Text(
            t.button.kReturn,
            style: theme.textTheme.labelLarge!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
