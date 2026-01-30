import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q10_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_test_page.dart';

class WeatherPersonalityTestQ9Page extends ConsumerWidget {
  const WeatherPersonalityTestQ9Page({super.key});

  static String get routeName => 'weather_personality_test_q9';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final q9Answer = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.q9Answer));

    return WeatherPersonalityTestPage(
      title: t.weatherPersonalityTestPage.q9.title,
      question: t.weatherPersonalityTestPage.q9.question,
      answerA: t.weatherPersonalityTestPage.q9.answerA,
      answerB: t.weatherPersonalityTestPage.q9.answerB,
      isSelected: q9Answer != null,
      value: q9Answer,
      onTapAnswerOption: (choice) {
        notifier.updateQ9Answer(choice);
      },
      onPressedNext: () {
        notifier.nextPage();
        context.push(WeatherPersonalityTestQ10Page.routeLocation);
      },
    );
  }
}
