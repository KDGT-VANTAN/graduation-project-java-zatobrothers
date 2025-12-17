import 'package:flutter/material.dart';
import 'package:reimi_app/domain/value_objects/smoking.dart';
import 'package:reimi_app/i18n/strings.g.dart';

extension SmokingExtension on Smoking {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.smoking;
    switch (this) {
      case Smoking.no:
        return t.no;
      case Smoking.sometimes:
        return t.sometimes;
      case Smoking.yes:
        return t.yes;
    }
  }
}
