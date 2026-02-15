import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_characters_introduction_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_character_detail_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/states/weather_personality_characters_introduction_state.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/character_card.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';

class WeatherPersonalityCharactersIntroductionPage extends HookConsumerWidget {
  const WeatherPersonalityCharactersIntroductionPage({super.key});
  static String get routeName => 'weather_personality_characters_introduction';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final theme = Theme.of(context);
    final scrollController = useScrollController();
    final notifier = ref.read(
        weatherPersonalityCharactersIntroductionNotifierProvider.notifier);
    final isLoading = ref.watch(
        weatherPersonalityCharactersIntroductionNotifierProvider
            .select((state) => state.isLoading));
    final characters = ref.watch(
        weatherPersonalityCharactersIntroductionNotifierProvider
            .select((state) => state.characters));

    final mainController = useAnimationController(
      duration: const Duration(milliseconds: 600),
    )..forward();

    useEffect(() {
      Future.microtask(() {
        notifier.init();
      });

      final subscription =
          ref.listenManual<WeatherPersonalityCharactersIntroductionState>(
        weatherPersonalityCharactersIntroductionNotifierProvider,
        (prev, next) {
          if (next.errorMessage == null) return;
          AppSnackBar.error(context, next.errorMessage!);
        },
      );

      return subscription.close;
    }, []);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: BackgroundContainerNoon(
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: () async {
              notifier.refresh();
            },
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              controller: scrollController,
              slivers: [
                SliverAppBar(
                  floating: true,
                  snap: true,
                  title: Text(
                    t.weatherPersonalityCharactersIntroductionPage.title,
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
                ] else if (characters.isEmpty) ...[
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Text(
                          t.weatherPersonalityCharactersIntroductionPage
                              .isEmptyCase,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  )
                ] else ...[
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final character = characters[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 32),
                            child: ScaleTransition(
                              scale: Tween(begin: 0.9, end: 1.0).animate(
                                CurvedAnimation(
                                  parent: mainController,
                                  curve: Curves.easeOutBack,
                                ),
                              ),
                              child: FadeTransition(
                                opacity: mainController,
                                child: CharacterCard(
                                  character: character,
                                  onTap: () {
                                    context.push(
                                      WeatherPersonalityCharacterDetailPage
                                          .routeLocation,
                                      extra: {
                                        'typeCode':
                                            character.typeCode.displayCode,
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                        childCount: characters.length,
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
