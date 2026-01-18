import 'package:flutter/material.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';

extension GenderExtension on Gender {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.gender;
    switch (this) {
      case Gender.man:
        return t.man;
      case Gender.woman:
        return t.woman;
      case Gender.other:
        return t.other;
    }
  }
}
