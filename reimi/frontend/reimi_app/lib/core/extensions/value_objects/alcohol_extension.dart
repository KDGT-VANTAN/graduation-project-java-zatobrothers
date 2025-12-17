import 'package:flutter/material.dart';
import 'package:reimi_app/domain/value_objects/alcohol.dart';
import 'package:reimi_app/i18n/strings.g.dart';

extension AlcoholExtension on Alcohol {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.alcohol;
    switch (this) {
      case Alcohol.no:
        return t.no;
      case Alcohol.sometimes:
        return t.sometimes;
      case Alcohol.yes:
        return t.yes;
    }
  }
}
