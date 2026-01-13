import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q4_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_test_page.dart';

class WeatherPersonalityTestQ3Page extends ConsumerWidget {
  const WeatherPersonalityTestQ3Page({super.key});

  static String get routeName => 'weather_personality_test_q3';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final q3Answer = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.q3Answer));

    return WeatherPersonalityTestPage(
      title: t.weatherPersonalityTestPage.q3.title,
      question: t.weatherPersonalityTestPage.q3.question,
      answerA: t.weatherPersonalityTestPage.q3.answerA,
      answerB: t.weatherPersonalityTestPage.q3.answerB,
      isSelected: q3Answer != null,
      value: q3Answer,
      onTapAnswerOption: (score) {
        notifier.updateQ3Answer(score);
      },
      onPressedNext: () {
        notifier.nextPage();
        context.push(WeatherPersonalityTestQ4Page.routeLocation);
      },
    );
  }
}
