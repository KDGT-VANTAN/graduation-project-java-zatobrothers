import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q12_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_test_page.dart';

class WeatherPersonalityTestQ11Page extends ConsumerWidget {
  const WeatherPersonalityTestQ11Page({super.key});

  static String get routeName => 'weather_personality_test_q11';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final q11Answer = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.q11Answer));

    return WeatherPersonalityTestPage(
      title: t.weatherPersonalityTestPage.q11.title,
      question: t.weatherPersonalityTestPage.q11.question,
      answerA: t.weatherPersonalityTestPage.q11.answerA,
      answerB: t.weatherPersonalityTestPage.q11.answerB,
      isSelected: q11Answer != null,
      value: q11Answer,
      onTapAnswerOption: (choice) {
        notifier.updateQ11Answer(choice);
      },
      onPressedNext: () {
        notifier.nextPage();
        context.push(WeatherPersonalityTestQ12Page.routeLocation);
      },
    );
  }
}
