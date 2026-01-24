import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q1_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_button.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';

class WeatherPersonalityConceptPage extends StatelessWidget {
  const WeatherPersonalityConceptPage({super.key});
  static String get routeName => 'weather_personality_concept';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          t.weatherPersonalityConceptPage.title,
          style: theme.textTheme.titleMedium!.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.transparent,
      body: BackgroundContainerNoon(
        child: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: AlignmentGeometry.topCenter,
                child: SizedBox(
                  width: 480,
                  height: 480,
                  child: Assets.images.weatherPersonality.reimiGod.image(
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                ),
              ),
              Positioned(
                child: Column(
                  children: [
                    const SizedBox(height: 250),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(40, 24, 40, 28),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.8),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Column(
                          children: [
                            Text(
                              t.weatherPersonalityConceptPage.contentText
                                  .contentTitle,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 16),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  height: 1.6,
                                  fontSize: 15,
                                  color: const Color(0xFF4A5A63),
                                ),
                                children: [
                                  TextSpan(
                                    text: t.weatherPersonalityConceptPage
                                        .contentText.contentText1,
                                  ),
                                  TextSpan(
                                    text: t.weatherPersonalityConceptPage
                                        .contentText.contentText2,
                                  ),
                                  TextSpan(
                                    text: t.weatherPersonalityConceptPage
                                        .contentText.contentText3,
                                  ),
                                  TextSpan(
                                    text: t.weatherPersonalityConceptPage
                                        .contentText.contentText4,
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                  TextSpan(
                                    text: t.weatherPersonalityConceptPage
                                        .contentText.contentText5,
                                  ),
                                  TextSpan(
                                    text: t.weatherPersonalityConceptPage
                                        .contentText.contentText6,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    WeatherPersonalityButton(
                      label: t.button.startTest,
                      onPressed: () {
                        context.go(WeatherPersonalityTestQ1Page.routeLocation);
                      },
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
