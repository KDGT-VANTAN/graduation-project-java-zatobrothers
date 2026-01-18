import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q8_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_test_page.dart';

class WeatherPersonalityTestQ7Page extends ConsumerWidget {
  const WeatherPersonalityTestQ7Page({super.key});

  static String get routeName => 'weather_personality_test_q7';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final q7Answer = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.q7Answer));

    return WeatherPersonalityTestPage(
      title: t.weatherPersonalityTestPage.q7.title,
      question: t.weatherPersonalityTestPage.q7.question,
      answerA: t.weatherPersonalityTestPage.q7.answerA,
      answerB: t.weatherPersonalityTestPage.q7.answerB,
      isSelected: q7Answer != null,
      value: q7Answer,
      onTapAnswerOption: (score) {
        notifier.updateQ7Answer(score);
      },
      onPressedNext: () {
        notifier.nextPage();
        context.push(WeatherPersonalityTestQ8Page.routeLocation);
      },
    );
  }
}
