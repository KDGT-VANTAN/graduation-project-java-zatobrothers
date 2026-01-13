import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/core/share/share_payload.dart';
import 'package:reimi_app/core/share/share_providers.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/account/account_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_result_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/action_button.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/axis_feature_card.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/axis_score_bar.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/text_card.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_share_card.dart';
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
          typeCode: weatherPersonality.typeCode,
          typeName: weatherPersonality.typeName,
          catchphrase: weatherPersonality.typeCatchphrase,
          characterImageUrl: weatherPersonality.typeCharacterImageUrl,
        ),
        delay: const Duration(milliseconds: 100),
      );

      final shareService = ref.read(shareServiceProvider);

      await shareService.share(
        ImageSharePayload(
          bytes: bytes,
          fileName: 'test_result.png',
          text: 'あなたの診断結果はこちら✨',
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
      return timer.cancel;
    }, []);

    return Scaffold(
      body: BackgroundContainerNoon(
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              if (weatherPersonality == null) ...[
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4),
                      Text(
                        '診断結果の取得に失敗しました。',
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextButton(
                        onPressed: () {
                          context.go(AccountPage.routeLocation);
                        },
                        child: Text(
                          'アカウント画面に戻る',
                          style: theme.textTheme.labelLarge!.copyWith(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      )
                    ],
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
                SliverToBoxAdapter(
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
                        typeCode: weatherPersonality.typeCode,
                        typeName: weatherPersonality.typeName,
                        typeCatchphrase: weatherPersonality.typeCatchphrase,
                        typeCharacterImageUrl:
                            weatherPersonality.typeCharacterImageUrl,
                      ),
                    ),
                  ),
                ),
                const Gap(height: 32),
                SliverToBoxAdapter(
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
                const Gap(height: 32),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SectionTitle(
                          title: t.weatherPersonalityTestResultPage.section
                              .axisFeature.title,
                        ),
                        const SizedBox(height: 16),
                        AxisFeatureCard(
                          //TODO: スコアによって title、code が変わる
                          title: '感受性',
                          code: 'S（高）',
                          description: weatherPersonality.axisFeatures[0],
                        ),
                        const SizedBox(height: 12),
                        AxisFeatureCard(
                          //TODO: スコアによって title、code が変わる
                          title: '準備性',
                          code: 'P（計画型）',
                          description: weatherPersonality.axisFeatures[1],
                        ),
                        const SizedBox(height: 12),
                        AxisFeatureCard(
                          //TODO: スコアによって title、code が変わる
                          title: '外行動性',
                          code: 'O（Outdoor）',
                          description: weatherPersonality.axisFeatures[2],
                        ),
                        const SizedBox(height: 12),
                        AxisFeatureCard(
                          //TODO: スコアによって title、code が変わる
                          title: '動機特性',
                          code: 'E（情緒）',
                          description: weatherPersonality.axisFeatures[3],
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(height: 32),
                SliverToBoxAdapter(
                  child: TextCard(
                    child: Column(
                      children: [
                        SectionTitle(
                          title: t.weatherPersonalityTestResultPage.section
                              .axisScore.title,
                        ),
                        const SizedBox(height: 16),
                        AxisScoreBar(
                          leftLabel: t.weatherPersonalityTestResultPage
                              .section.axisScore.axis.sensitivity.sensitive,
                          rightLabel: t.weatherPersonalityTestResultPage
                              .section.axisScore.axis.sensitivity.neutral,
                          score: weatherPersonality.axisScore[0],
                        ),
                        const SizedBox(height: 20),
                        AxisScoreBar(
                          leftLabel: t.weatherPersonalityTestResultPage
                              .section.axisScore.axis.preparedness.planned,
                          rightLabel: t.weatherPersonalityTestResultPage
                              .section.axisScore.axis.preparedness.flexible,
                          score: weatherPersonality.axisScore[1],
                        ),
                        const SizedBox(height: 20),
                        AxisScoreBar(
                          leftLabel: t.weatherPersonalityTestResultPage
                              .section.axisScore.axis.activity.outdoor,
                          rightLabel: t.weatherPersonalityTestResultPage
                              .section.axisScore.axis.activity.indoor,
                          score: weatherPersonality.axisScore[2],
                        ),
                        const SizedBox(height: 20),
                        AxisScoreBar(
                          leftLabel: t.weatherPersonalityTestResultPage
                              .section.axisScore.axis.motivation.emotional,
                          rightLabel: t.weatherPersonalityTestResultPage
                              .section.axisScore.axis.motivation.rational,
                          score: weatherPersonality.axisScore[3],
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(height: 32),
                SliverToBoxAdapter(
                  child: BehaviorTendencyCard(
                    behaviorTendencyList:
                        weatherPersonality.behaviorTendencyList,
                  ),
                ),
                const Gap(height: 32),
                SliverToBoxAdapter(
                  child: GodsMessageCard(
                    godsMessage: weatherPersonality.godsMessage,
                  ),
                ),
                const Gap(height: 32),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
                        }),
                  ),
                ),
                const Gap(height: 16),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
              const SliverFillRemaining(
                hasScrollBody: false,
                child: SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MainResultCard extends StatelessWidget {
  const _MainResultCard({
    required this.typeCode,
    required this.typeName,
    required this.typeCatchphrase,
    required this.typeCharacterImageUrl,
  });
  final String typeCode;
  final String typeName;
  final String typeCatchphrase;
  final String typeCharacterImageUrl;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
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
              typeCode,
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
                image: typeCharacterImageUrl.toImageProvider(),
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
              typeName,
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
                typeCatchphrase,
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
    required this.behaviorTendencyList,
  });
  final List<String> behaviorTendencyList;

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
          const SizedBox(height: 16),
          Column(
            children:
                behaviorTendencyList.map((text) => _BulletText(text)).toList(),
          ),
        ],
      ),
    );
  }
}

class _BulletText extends StatelessWidget {
  const _BulletText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 9),
            child: Icon(
              Icons.circle,
              size: 6,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
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
