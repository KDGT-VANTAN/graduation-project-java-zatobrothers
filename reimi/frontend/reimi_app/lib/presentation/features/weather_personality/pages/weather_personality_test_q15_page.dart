import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q16_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_test_page.dart';

class WeatherPersonalityTestQ15Page extends ConsumerWidget {
  const WeatherPersonalityTestQ15Page({super.key});

  static String get routeName => 'weather_personality_test_q15';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final q15Answer = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.q15Answer));

    return WeatherPersonalityTestPage(
      title: t.weatherPersonalityTestPage.q15.title,
      question: t.weatherPersonalityTestPage.q15.question,
      answerA: t.weatherPersonalityTestPage.q15.answerA,
      answerB: t.weatherPersonalityTestPage.q15.answerB,
      isSelected: q15Answer != null,
      value: q15Answer,
      onTapAnswerOption: (score) {
        notifier.updateQ15Answer(score);
      },
      onPressedNext: () {
        notifier.nextPage();
        context.push(WeatherPersonalityTestQ16Page.routeLocation);
      },
    );
  }
}
