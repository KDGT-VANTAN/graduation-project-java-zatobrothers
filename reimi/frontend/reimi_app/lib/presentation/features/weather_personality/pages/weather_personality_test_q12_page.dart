import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q13_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_test_page.dart';

class WeatherPersonalityTestQ12Page extends ConsumerWidget {
  const WeatherPersonalityTestQ12Page({super.key});

  static String get routeName => 'weather_personality_test_q12';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final q12Answer = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.q12Answer));

    return WeatherPersonalityTestPage(
      title: t.weatherPersonalityTestPage.q12.title,
      question: t.weatherPersonalityTestPage.q12.question,
      answerA: t.weatherPersonalityTestPage.q12.answerA,
      answerB: t.weatherPersonalityTestPage.q12.answerB,
      isSelected: q12Answer != null,
      value: q12Answer,
      onTapAnswerOption: (choice) {
        notifier.updateQ12Answer(choice);
      },
      onPressedNext: () {
        notifier.nextPage();
        context.push(WeatherPersonalityTestQ13Page.routeLocation);
      },
    );
  }
}
