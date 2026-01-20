import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q3_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_test_page.dart';

class WeatherPersonalityTestQ2Page extends ConsumerWidget {
  const WeatherPersonalityTestQ2Page({super.key});

  static String get routeName => 'weather_personality_test_q2';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final q2Answer = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.q2Answer));

    return WeatherPersonalityTestPage(
      title: t.weatherPersonalityTestPage.q2.title,
      question: t.weatherPersonalityTestPage.q2.question,
      answerA: t.weatherPersonalityTestPage.q2.answerA,
      answerB: t.weatherPersonalityTestPage.q2.answerB,
      isSelected: q2Answer != null,
      value: q2Answer,
      onTapAnswerOption: (score) {
        notifier.updateQ2Answer(score);
      },
      onPressedNext: () {
        notifier.nextPage();
        context.push(WeatherPersonalityTestQ3Page.routeLocation);
      },
    );
  }
}
