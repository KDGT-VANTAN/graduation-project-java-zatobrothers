import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q15_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_test_page.dart';

class WeatherPersonalityTestQ14Page extends ConsumerWidget {
  const WeatherPersonalityTestQ14Page({super.key});

  static String get routeName => 'weather_personality_test_q14';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final q14Answer = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.q14Answer));

    return WeatherPersonalityTestPage(
      title: t.weatherPersonalityTestPage.q14.title,
      question: t.weatherPersonalityTestPage.q14.question,
      answerA: t.weatherPersonalityTestPage.q14.answerA,
      answerB: t.weatherPersonalityTestPage.q14.answerB,
      isSelected: q14Answer != null,
      value: q14Answer,
      onTapAnswerOption: (choice) {
        notifier.updateQ14Answer(choice);
      },
      onPressedNext: () {
        notifier.nextPage();
        context.push(WeatherPersonalityTestQ15Page.routeLocation);
      },
    );
  }
}
