import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/domain/read_models/behavior_tendency_read_model.dart';
import 'package:reimi_app/domain/read_models/type_compatibility_read_model.dart';
import 'package:reimi_app/domain/read_models/weather_personality_character_detail_read_model.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/account/account_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_character_detail_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/states/weather_personality_character_detail_state.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/action_button.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/axis_feature_card.dart';
import 'package:reimi_app/presentation/shared/widgets/text_card.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/section_title.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class WeatherPersonalityCharacterDetailPage extends HookConsumerWidget {
  static String get routeName => 'weather_personality_character_detail';
  static String get routeLocation => '/$routeName';
  const WeatherPersonalityCharacterDetailPage({
    super.key,
    required this.typeCode,
  });
  final String? typeCode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final notifier =
        ref.read(weatherPersonalityCharacterDetailNotifierProvider.notifier);
    final character = ref.watch(
        weatherPersonalityCharacterDetailNotifierProvider
            .select((state) => state.character));
    final isLoading = ref.watch(
        weatherPersonalityCharacterDetailNotifierProvider
            .select((state) => state.isLoading));

    final mainController = useAnimationController(
      duration: const Duration(milliseconds: 600),
    )..forward();

    final subController = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );

    useEffect(() {
      Future.microtask(() {
        notifier.init(typeCode);
      });
      final timer = Timer(
        const Duration(milliseconds: 400),
        () => subController.forward(),
      );

      final subscription =
          ref.listenManual<WeatherPersonalityCharacterDetailState>(
        weatherPersonalityCharacterDetailNotifierProvider,
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
          child: RefreshIndicator(
            onRefresh: () async {
              notifier.refresh(typeCode);
            },
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverAppBar(
                  floating: true,
                  snap: true,
                  centerTitle: true,
                  title: Text(
                    t.weatherPersonalityCharacterDetailPage.title,
                    style: theme.textTheme.titleMedium!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
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
                ] else if (character == null) ...[
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    sliver: SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Text(
                          t.weatherPersonalityCharacterDetailPage.nullCase,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),
                ] else ...[
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
                            character: character,
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
                            ruling: character.rulingStatement,
                          ),
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
                            title: t.weatherPersonalityDetailPage.section
                                .axisFeature.title,
                          ),
                          const SizedBox(height: 16),
                          for (final axisFeature in character.axisFeatures) ...[
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
                        behaviorTendencies: character.behaviorTendencies,
                      ),
                    ),
                  ),
                  const Gap(height: 32),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverToBoxAdapter(
                      child: CompatibleTypeCard(
                        compatibleTypes: character.compatibleTypes,
                      ),
                    ),
                  ),
                  const Gap(height: 32),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverToBoxAdapter(
                      child: IncompatibleTypeCard(
                        incompatibleTypes: character.incompatibleTypes,
                      ),
                    ),
                  ),
                  const Gap(height: 32),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverToBoxAdapter(
                      child: GodsMessageCard(
                        godsMessage: character.godsMessage,
                      ),
                    ),
                  ),
                  const Gap(height: 32),
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
      ),
    );
  }
}

class _MainResultCard extends StatelessWidget {
  const _MainResultCard({
    required this.character,
  });
  final WeatherPersonalityCharacterDetailReadModel character;

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
            t.weatherPersonalityDetailPage.section.mainResult.typeCode,
            style: theme.textTheme.titleSmall!.copyWith(
              color: Colors.black54,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            character.typeCode.displayCode,
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
              image: character.typeImageUrl.toImageProvider(),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            character.typeName,
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
              character.typeCatchphrase,
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
              t.weatherPersonalityDetailPage.section.godsRuling.title,
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
              t.weatherPersonalityDetailPage.section.behaviorTendency.title,
              style: theme.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
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

class CompatibleTypeCard extends StatelessWidget {
  const CompatibleTypeCard({
    super.key,
    required this.compatibleTypes,
  });
  final List<TypeCompatibilityReadModel> compatibleTypes;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    return TextCard(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              t.weatherPersonalityDetailPage.section.compatibleType.title,
              style: theme.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                compatibleTypes.map((type) => TypeCard(type: type)).toList(),
          )
        ],
      ),
    );
  }
}

class IncompatibleTypeCard extends StatelessWidget {
  const IncompatibleTypeCard({
    super.key,
    required this.incompatibleTypes,
  });
  final List<TypeCompatibilityReadModel> incompatibleTypes;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    return TextCard(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              t.weatherPersonalityDetailPage.section.incompatibleType.title,
              style: theme.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                incompatibleTypes.map((type) => TypeCard(type: type)).toList(),
          )
        ],
      ),
    );
  }
}

class TypeCard extends StatelessWidget {
  const TypeCard({
    super.key,
    required this.type,
  });
  final TypeCompatibilityReadModel type;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.secondary.withValues(alpha: 0.1),
            theme.colorScheme.tertiary.withValues(alpha: 0.1),
            theme.colorScheme.primary.withValues(alpha: 0.1),
          ],
        ),
      ),
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image(
                  image: type.typeImageUrl.toImageProvider(),
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type.typeCode.displayCode,
                  softWrap: true,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary,
                  ),
                ),
                Text(
                  '(${type.typeName})',
                  softWrap: true,
                  style: theme.textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Point:',
                  style: theme.textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  type.compatibilityPoint,
                  softWrap: true,
                  style: theme.textTheme.bodySmall!.copyWith(
                    decoration: TextDecoration.underline,
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
                t.weatherPersonalityDetailPage.section.godsMessage.title,
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
