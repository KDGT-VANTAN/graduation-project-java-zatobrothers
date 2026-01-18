import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q5_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_test_page.dart';

class WeatherPersonalityTestQ4Page extends ConsumerWidget {
  const WeatherPersonalityTestQ4Page({super.key});

  static String get routeName => 'weather_personality_test_q4';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final q4Answer = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.q4Answer));

    return WeatherPersonalityTestPage(
      title: t.weatherPersonalityTestPage.q4.title,
      question: t.weatherPersonalityTestPage.q4.question,
      answerA: t.weatherPersonalityTestPage.q4.answerA,
      answerB: t.weatherPersonalityTestPage.q4.answerB,
      isSelected: q4Answer != null,
      value: q4Answer,
      onTapAnswerOption: (score) {
        notifier.updateQ4Answer(score);
      },
      onPressedNext: () {
        notifier.nextPage();
        context.push(WeatherPersonalityTestQ5Page.routeLocation);
      },
    );
  }
}
