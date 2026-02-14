import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/weather_personality_polarity_extension.dart';
import 'package:reimi_app/core/services/share/share_payload.dart';
import 'package:reimi_app/core/services/share/share_provider.dart';
import 'package:reimi_app/domain/read_models/behavior_tendency_read_model.dart';
import 'package:reimi_app/domain/read_models/weather_personality_result_read_model.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_axis.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_polarity.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/account/account_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_result_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/states/weather_personality_test_result_state.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/action_button.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/axis_feature_card.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/axis_score_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/text_card.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_share_card.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/section_title.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';
import 'package:screenshot/screenshot.dart';

class WeatherPersonalityTestResultPage extends HookConsumerWidget {
  const WeatherPersonalityTestResultPage({super.key});
  static String get routeName => 'weather_personality_test_result';
  static String get routeLocation => '/$routeName';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final notifier =
        ref.read(weatherPersonalityTestResultNotifierProvider.notifier);
    final weatherPersonality = ref.watch(
        weatherPersonalityTestResultNotifierProvider
            .select((state) => state.weatherPersonality));
    final isLoading = ref.watch(weatherPersonalityTestResultNotifierProvider
        .select((state) => state.isLoading));

    final mainController = useAnimationController(
      duration: const Duration(milliseconds: 600),
    )..forward();

    final subController = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );

    final screenshotController = useMemoized(() => ScreenshotController());

    Future<void> onShareTestResult() async {
      if (weatherPersonality == null) return;

      final bytes = await screenshotController.captureFromWidget(
        WeatherPersonalityShareCard(
          typeCode: weatherPersonality.typeCode.displayCode,
          typeName: weatherPersonality.typeName,
          typeCatchphrase: weatherPersonality.typeCatchphrase,
          typeImageUrl: weatherPersonality.typeImageUrl,
        ),
        delay: const Duration(milliseconds: 100),
      );

      final shareService = ref.read(shareServiceProvider);

      await shareService.share(
        ImageSharePayload(
          bytes: bytes,
          fileName: 'test_result.png',
          text: t.card.weatherPersonalityShareCard.shareMessage,
        ),
      );
    }

    useEffect(() {
      Future.microtask(() {
        notifier.init();
      });
      final timer = Timer(
        const Duration(milliseconds: 400),
        () => subController.forward(),
      );

      final subscription = ref.listenManual<WeatherPersonalityTestResultState>(
        weatherPersonalityTestResultNotifierProvider,
        (prev, next) {
          if (next.errorMessage == null) return;
          AppSnackBar.error(context, next.errorMessage!);
        },
      );

      return () {
        timer.cancel;
        subscription.close;
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
              ] else if (weatherPersonality == null) ...[
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  sliver: SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          t.weatherPersonalityTestResultPage.nullCase,
                          style: theme.textTheme.bodyMedium,
                        ),
                        TextButton(
                          onPressed: () {
                            context.go(AccountPage.routeLocation);
                          },
                          child: Text(
                            t.button.returnToAccountPage,
                            style: theme.textTheme.labelLarge!.copyWith(
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ] else ...[
                const Gap(height: 16),
                SliverToBoxAdapter(
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE9F7FB),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        t.weatherPersonalityTestResultPage.section.title,
                        style: theme.textTheme.titleSmall!.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF3A5F6F),
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(height: 16),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  sliver: SliverToBoxAdapter(
                    child: ScaleTransition(
                      scale: Tween(begin: 0.9, end: 1.0).animate(
                        CurvedAnimation(
                          parent: mainController,
                          curve: Curves.easeOutBack,
                        ),
                      ),
                      child: FadeTransition(
                        opacity: mainController,
                        child: _MainResultCard(
                          weatherPersonality: weatherPersonality,
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(height: 32),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  sliver: SliverToBoxAdapter(
                    child: SlideTransition(
                      position: Tween(
                        begin: const Offset(0, 0.15),
                        end: Offset.zero,
                      ).animate(
                        CurvedAnimation(
                          parent: subController,
                          curve: Curves.easeOut,
                        ),
                      ),
                      child: FadeTransition(
                        opacity: subController,
                        child: _GodsRulingCard(
                          ruling: weatherPersonality.rulingStatement,
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(height: 32),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  sliver: SliverToBoxAdapter(
                    child: TextCard(
                      child: Column(
                        children: [
                          SectionTitle(
                            title: t.weatherPersonalityTestResultPage.section
                                .axisScore.title,
                          ),
                          const SizedBox(height: 16),
                          Column(
                            children: weatherPersonality.userAxisScore.entries
                                .map((entry) {
                              final axis = entry.key;
                              final score = entry.value;

                              switch (axis) {
                                case WeatherPersonalityAxis.sensitivity:
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: AxisScoreBar(
                                      leftLabel: WeatherPersonalityPolarity
                                          .neutral
                                          .displayName(context),
                                      rightLabel: WeatherPersonalityPolarity
                                          .sensitive
                                          .displayName(context),
                                      score: score,
                                    ),
                                  );
                                case WeatherPersonalityAxis.preparedness:
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: AxisScoreBar(
                                      leftLabel: WeatherPersonalityPolarity
                                          .flexible
                                          .displayName(context),
                                      rightLabel: WeatherPersonalityPolarity
                                          .planned
                                          .displayName(context),
                                      score: score,
                                    ),
                                  );
                                case WeatherPersonalityAxis.activity:
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: AxisScoreBar(
                                      leftLabel: WeatherPersonalityPolarity
                                          .indoor
                                          .displayName(context),
                                      rightLabel: WeatherPersonalityPolarity
                                          .outdoor
                                          .displayName(context),
                                      score: score,
                                    ),
                                  );

                                case WeatherPersonalityAxis.motivation:
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: AxisScoreBar(
                                      leftLabel: WeatherPersonalityPolarity
                                          .rational
                                          .displayName(context),
                                      rightLabel: WeatherPersonalityPolarity
                                          .emotional
                                          .displayName(context),
                                      score: score,
                                    ),
                                  );
                              }
                            }).toList(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const Gap(height: 32),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      children: [
                        SectionTitle(
                          title: t.weatherPersonalityTestResultPage.section
                              .axisFeature.title,
                        ),
                        const SizedBox(height: 16),
                        for (final axisFeature
                            in weatherPersonality.axisFeatures) ...[
                          AxisFeatureCard(
                            axisFeature: axisFeature,
                          ),
                          const SizedBox(height: 12),
                        ],
                      ],
                    ),
                  ),
                ),
                const Gap(height: 20),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  sliver: SliverToBoxAdapter(
                    child: BehaviorTendencyCard(
                      behaviorTendencies: weatherPersonality.behaviorTendencies,
                    ),
                  ),
                ),
                const Gap(height: 32),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  sliver: SliverToBoxAdapter(
                    child: GodsMessageCard(
                      godsMessage: weatherPersonality.godsMessage,
                    ),
                  ),
                ),
                const Gap(height: 32),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  sliver: SliverToBoxAdapter(
                    child: ActionButton(
                      icon: const Icon(Icons.share),
                      label: Text(
                        t.button.shareResults,
                        style: theme.textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: theme.colorScheme.primary,
                      onPressed: () async {
                        await onShareTestResult();
                      },
                    ),
                  ),
                ),
                const Gap(height: 16),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  sliver: SliverToBoxAdapter(
                    child: ActionButton(
                      label: Text(
                        t.button.returnToAccountPage,
                        style: theme.textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      foregroundColor: theme.colorScheme.primary,
                      backgroundColor: Colors.white,
                      onPressed: () {
                        context.go(AccountPage.routeLocation);
                      },
                    ),
                  ),
                ),
                const Gap(height: 40),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _MainResultCard extends StatelessWidget {
  const _MainResultCard({
    required this.weatherPersonality,
  });
  final WeatherPersonalityResultReadModel weatherPersonality;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: const Color(0xFFE9F7FB),
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            t.weatherPersonalityTestResultPage.section.mainResult.typeCode,
            style: theme.textTheme.titleSmall!.copyWith(
              color: Colors.black54,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            weatherPersonality.typeCode.displayCode,
            style: theme.textTheme.titleLarge!.copyWith(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(height: 24),
          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  theme.colorScheme.secondary.withValues(alpha: 0.7),
                  theme.colorScheme.tertiary.withValues(alpha: 0.7),
                  theme.colorScheme.primary.withValues(alpha: 0.7),
                ],
              ),
            ),
            alignment: Alignment.center,
            child: Image(
              image: weatherPersonality.typeImageUrl.toImageProvider(),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            t.weatherPersonalityTestResultPage.section.mainResult.you,
            style: theme.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            weatherPersonality.typeName,
            style: theme.textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(height: 24),
          Container(
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
              weatherPersonality.typeCatchphrase,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium!.copyWith(
                fontSize: 13,
                height: 1.6,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GodsRulingCard extends StatelessWidget {
  const _GodsRulingCard({
    required this.ruling,
  });
  final String ruling;

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
              t.weatherPersonalityTestResultPage.section.godsRuling.title,
              style: theme.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            ruling,
            style: theme.textTheme.bodyMedium!.copyWith(height: 1.6),
          ),
        ],
      ),
    );
  }
}

class BehaviorTendencyCard extends StatelessWidget {
  const BehaviorTendencyCard({
    super.key,
    required this.behaviorTendencies,
  });
  final List<BehaviorTendencyReadModel> behaviorTendencies;

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
              t.weatherPersonalityTestResultPage.section.behaviorTendency.title,
              style: theme.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Column(
            children: behaviorTendencies
                .map((behaviorTendency) =>
                    _BehaviorTendencieListTile(behaviorTendency))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _BehaviorTendencieListTile extends StatelessWidget {
  const _BehaviorTendencieListTile(this.behaviorTendency);

  final BehaviorTendencyReadModel behaviorTendency;

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
              behaviorTendency.summary,
              style: theme.textTheme.titleSmall!.copyWith(
                color: const Color(0xFF4A5F72),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      subtitle: Row(
        children: [
          const SizedBox(width: 10),
          Flexible(
            child: Text(
              behaviorTendency.detail,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: const Color(0xFF4A5F72),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GodsMessageCard extends StatelessWidget {
  const GodsMessageCard({
    super.key,
    required this.godsMessage,
  });
  final String godsMessage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    return TextCard(
      colors: const [
        Color(0xFFCDDCD7),
        Color(0xFFB7E3DB),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: Colors.transparent,
                backgroundImage: Assets
                    .images.weatherPersonality.reimiGodIcon.path
                    .toImageProvider(),
              ),
              const SizedBox(width: 12),
              Text(
                t.weatherPersonalityTestResultPage.section.godsMessage.title,
                style: theme.textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            godsMessage,
            style: theme.textTheme.bodyMedium!.copyWith(
              height: 1.6,
              color: const Color(0xFF334155),
            ),
          ),
        ],
      ),
    );
  }
}
