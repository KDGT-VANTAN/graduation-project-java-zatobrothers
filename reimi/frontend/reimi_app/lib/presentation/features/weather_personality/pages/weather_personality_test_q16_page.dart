import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_judging_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_test_page.dart';
import 'package:reimi_app/presentation/shared/utils/custom_confirmation_dialog.dart';

class WeatherPersonalityTestQ16Page extends ConsumerWidget {
  const WeatherPersonalityTestQ16Page({super.key});

  static String get routeName => 'weather_personality_test_q16';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final theme = Theme.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final q16Answer = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.q16Answer));

    return WeatherPersonalityTestPage(
      title: t.weatherPersonalityTestPage.q16.title,
      question: t.weatherPersonalityTestPage.q16.question,
      answerA: t.weatherPersonalityTestPage.q16.answerA,
      answerB: t.weatherPersonalityTestPage.q16.answerB,
      isSelected: q16Answer != null,
      value: q16Answer,
      onTapAnswerOption: (score) {
        notifier.updateQ16Answer(score);
      },
      onPressedNext: () async {
        await customConfirmationDialog(
          context: context,
          title: t.dialog.completeTest.title,
          contentText: t.dialog.completeTest.contentText,
          buttonLabel: t.button.completion,
          onPressed: () {
            context.go(WeatherPersonalityTestJudgingPage.routeLocation);
          },
          accentColor: theme.colorScheme.primary,
        );
      },
    );
  }
}
