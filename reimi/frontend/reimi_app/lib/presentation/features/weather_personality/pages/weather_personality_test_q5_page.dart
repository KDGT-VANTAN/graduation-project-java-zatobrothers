import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q6_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_test_page.dart';

class WeatherPersonalityTestQ5Page extends ConsumerWidget {
  const WeatherPersonalityTestQ5Page({super.key});

  static String get routeName => 'weather_personality_test_q5';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final q5Answer = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.q5Answer));

    return WeatherPersonalityTestPage(
      title: t.weatherPersonalityTestPage.q5.title,
      question: t.weatherPersonalityTestPage.q5.question,
      answerA: t.weatherPersonalityTestPage.q5.answerA,
      answerB: t.weatherPersonalityTestPage.q5.answerB,
      isSelected: q5Answer != null,
      value: q5Answer,
      onTapAnswerOption: (score) {
        notifier.updateQ5Answer(score);
      },
      onPressedNext: () {
        notifier.nextPage();
        context.push(WeatherPersonalityTestQ6Page.routeLocation);
      },
    );
  }
}
