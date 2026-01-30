import 'package:flutter/material.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/domain/value_objects/answer_choice.dart';

extension AnswerChoiceExtension on AnswerChoice {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.answerChoice;
    switch (this) {
      case AnswerChoice.stronglyA:
        return t.stronglyA;
      case AnswerChoice.slightlyA:
        return t.slightlyA;
      case AnswerChoice.slightlyB:
        return t.slightlyB;
      case AnswerChoice.stronglyB:
        return t.stronglyB;
    }
  }
}
