import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q11_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_test_page.dart';

class WeatherPersonalityTestQ10Page extends ConsumerWidget {
  const WeatherPersonalityTestQ10Page({super.key});

  static String get routeName => 'weather_personality_test_q10';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final q10Answer = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.q10Answer));

    return WeatherPersonalityTestPage(
      title: t.weatherPersonalityTestPage.q10.title,
      question: t.weatherPersonalityTestPage.q10.question,
      answerA: t.weatherPersonalityTestPage.q10.answerA,
      answerB: t.weatherPersonalityTestPage.q10.answerB,
      isSelected: q10Answer != null,
      value: q10Answer,
      onTapAnswerOption: (score) {
        notifier.updateQ10Answer(score);
      },
      onPressedNext: () {
        notifier.nextPage();
        context.push(WeatherPersonalityTestQ11Page.routeLocation);
      },
    );
  }
}
