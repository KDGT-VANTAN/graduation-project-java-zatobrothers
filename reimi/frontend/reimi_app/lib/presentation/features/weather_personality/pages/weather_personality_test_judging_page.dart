import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_result_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_button.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_night.dart';

class WeatherPersonalityTestJudgingPage extends HookConsumerWidget {
  const WeatherPersonalityTestJudgingPage({super.key});

  static String get routeName => 'weather_personality_test_judging';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final showResultText = useState(false);
    final showResultButton = useState(false);
    final showTestingText = useState(true);

    final progressController = useAnimationController(
      duration: const Duration(seconds: 3),
    );

    final breatheController = useAnimationController(
      duration: const Duration(milliseconds: 1600),
    );

    useEffect(() {
      final timer = Timer(
        const Duration(seconds: 3),
        () {
          showResultText.value = true;
          showResultButton.value = true;
          showTestingText.value = false;
        },
      );

      progressController.forward();
      breatheController.repeat(reverse: true);
      return timer.cancel;
    }, const []);

    final scale = Tween(begin: 0.92, end: 1.05).animate(
      CurvedAnimation(
        parent: breatheController,
        curve: Curves.easeInOut,
      ),
    );

    final fade = Tween(begin: 0.75, end: 1.0).animate(
      CurvedAnimation(
        parent: breatheController,
        curve: Curves.easeInOut,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BackgroundContainerNight(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Stack(
              children: [
                ..._buildBackgroundDots(),
                Column(
                  children: [
                    const Spacer(flex: 2),
                    FadeTransition(
                      opacity: fade,
                      child: ScaleTransition(
                        scale: scale,
                        child: Container(
                          width: 210,
                          height: 210,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: Assets.images.weatherPersonality.reimiGodIcon
                              .image(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    AnimatedSlide(
                      offset: showResultText.value
                          ? Offset.zero
                          : const Offset(0, 0.3),
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeOutCubic,
                      child: AnimatedOpacity(
                        opacity: showResultText.value ? 1 : 0,
                        duration: const Duration(milliseconds: 300),
                        child: Column(
                          children: [
                            Text(
                              t.weatherPersonalityTestJudgingPage.contentText
                                  .contentTitle,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                fontSize: 20,
                                height: 1.6,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              t.weatherPersonalityTestJudgingPage.contentText
                                  .contentText1,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                height: 1.6,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(flex: 1),
                    Row(
                      children: [
                        AnimatedSlide(
                          offset: showTestingText.value
                              ? Offset.zero
                              : const Offset(0, 0.3),
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeOutCubic,
                          child: AnimatedOpacity(
                            opacity: showTestingText.value ? 1 : 0,
                            duration: const Duration(milliseconds: 300),
                            child: Text(
                              t.weatherPersonalityTestJudgingPage.loading,
                              style: theme.textTheme.titleSmall!.copyWith(
                                color: Colors.white70,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        AnimatedBuilder(
                          animation: progressController,
                          builder: (_, __) {
                            final percent =
                                (progressController.value * 100).toInt();
                            return Text(
                              '$percent%',
                              style: theme.textTheme.titleSmall!.copyWith(
                                color: Colors.white70,
                                fontWeight: FontWeight.w600,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    AnimatedBuilder(
                      animation: progressController,
                      builder: (_, __) {
                        return ShaderMask(
                          shaderCallback: (rect) {
                            return LinearGradient(
                              colors: [
                                theme.colorScheme.secondary,
                                theme.colorScheme.tertiary,
                                theme.colorScheme.primary,
                              ],
                            ).createShader(rect);
                          },
                          blendMode: BlendMode.srcIn,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: LinearProgressIndicator(
                              minHeight: 8,
                              value: progressController.value,
                              backgroundColor: Colors.white24,
                              valueColor:
                                  const AlwaysStoppedAnimation(Colors.white),
                            ),
                          ),
                        );
                      },
                    ),
                    const Spacer(flex: 1),
                    AnimatedSlide(
                        offset: showResultButton.value
                            ? Offset.zero
                            : const Offset(0, 0.3),
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeOutCubic,
                        child: AnimatedOpacity(
                          opacity: showResultButton.value ? 1 : 0,
                          duration: const Duration(milliseconds: 300),
                          child: WeatherPersonalityButton(
                            label: t.button.seeResults,
                            onPressed: showResultButton.value
                                ? () {
                                    context.go(WeatherPersonalityTestResultPage
                                        .routeLocation);
                                  }
                                : null,
                          ),
                        )),
                    const Spacer(flex: 3),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// 背景の浮遊ドット
List<Widget> _buildBackgroundDots() {
  return [
    _dot(top: 80, left: 60, size: 6),
    _dot(top: 180, right: 80, size: 4),
    _dot(bottom: 160, left: 90, size: 5),
    _dot(bottom: 100, right: 120, size: 6),
    _dot(bottom: 60, left: 180, size: 4),
  ];
}

Widget _dot({
  double? top,
  double? bottom,
  double? left,
  double? right,
  double size = 4,
}) {
  return Positioned(
    top: top,
    bottom: bottom,
    left: left,
    right: right,
    child: Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        shape: BoxShape.circle,
      ),
    ),
  );
}
