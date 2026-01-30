import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q7_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_test_page.dart';

class WeatherPersonalityTestQ6Page extends ConsumerWidget {
  const WeatherPersonalityTestQ6Page({super.key});

  static String get routeName => 'weather_personality_test_q6';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final q6Answer = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.q6Answer));

    return WeatherPersonalityTestPage(
      title: t.weatherPersonalityTestPage.q6.title,
      question: t.weatherPersonalityTestPage.q6.question,
      answerA: t.weatherPersonalityTestPage.q6.answerA,
      answerB: t.weatherPersonalityTestPage.q6.answerB,
      isSelected: q6Answer != null,
      value: q6Answer,
      onTapAnswerOption: (choice) {
        notifier.updateQ6Answer(choice);
      },
      onPressedNext: () {
        notifier.nextPage();
        context.push(WeatherPersonalityTestQ7Page.routeLocation);
      },
    );
  }
}
