import 'package:flutter/material.dart';
import 'package:reimi_app/domain/values/gender.dart';
import 'package:reimi_app/i18n/strings.g.dart';

extension GenderExtension on Gender {
  String displayName(BuildContext context) {
    final t = Translations.of(context).userRegistration.gender.items;
    switch (this) {
      case Gender.man:
        return t.man;
      case Gender.woman:
        return t.woman;
      case Gender.others:
        return t.others;
    }
  }
}
