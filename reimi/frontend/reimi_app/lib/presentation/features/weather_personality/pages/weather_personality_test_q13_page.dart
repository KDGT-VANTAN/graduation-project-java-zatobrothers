import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q14_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_test_page.dart';

class WeatherPersonalityTestQ13Page extends ConsumerWidget {
  const WeatherPersonalityTestQ13Page({super.key});

  static String get routeName => 'weather_personality_test_q13';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final q13Answer = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.q13Answer));

    return WeatherPersonalityTestPage(
      title: t.weatherPersonalityTestPage.q13.title,
      question: t.weatherPersonalityTestPage.q13.question,
      answerA: t.weatherPersonalityTestPage.q13.answerA,
      answerB: t.weatherPersonalityTestPage.q13.answerB,
      isSelected: q13Answer != null,
      value: q13Answer,
      onTapAnswerOption: (score) {
        notifier.updateQ13Answer(score);
      },
      onPressedNext: () {
        notifier.nextPage();
        context.push(WeatherPersonalityTestQ14Page.routeLocation);
      },
    );
  }
}
