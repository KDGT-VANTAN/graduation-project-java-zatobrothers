import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q2_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_test_page.dart';

class WeatherPersonalityTestQ1Page extends ConsumerWidget {
  const WeatherPersonalityTestQ1Page({super.key});

  static String get routeName => 'weather_personality_test_q1';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final q1Answer = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.q1Answer));

    return WeatherPersonalityTestPage(
      title: t.weatherPersonalityTestPage.q1.title,
      question: t.weatherPersonalityTestPage.q1.question,
      answerA: t.weatherPersonalityTestPage.q1.answerA,
      answerB: t.weatherPersonalityTestPage.q1.answerB,
      isSelected: q1Answer != null,
      value: q1Answer,
      onTapAnswerOption: (choice) {
        notifier.updateQ1Answer(choice);
      },
      onPressedNext: () {
        notifier.nextPage();
        context.push(WeatherPersonalityTestQ2Page.routeLocation);
      },
    );
  }
}
