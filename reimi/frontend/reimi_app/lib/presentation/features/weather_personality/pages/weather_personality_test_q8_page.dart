import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q9_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_test_page.dart';

class WeatherPersonalityTestQ8Page extends ConsumerWidget {
  const WeatherPersonalityTestQ8Page({super.key});

  static String get routeName => 'weather_personality_test_q8';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final q8Answer = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.q8Answer));

    return WeatherPersonalityTestPage(
      title: t.weatherPersonalityTestPage.q8.title,
      question: t.weatherPersonalityTestPage.q8.question,
      answerA: t.weatherPersonalityTestPage.q8.answerA,
      answerB: t.weatherPersonalityTestPage.q8.answerB,
      isSelected: q8Answer != null,
      value: q8Answer,
      onTapAnswerOption: (score) {
        notifier.updateQ8Answer(score);
      },
      onPressedNext: () {
        notifier.nextPage();
        context.push(WeatherPersonalityTestQ9Page.routeLocation);
      },
    );
  }
}
