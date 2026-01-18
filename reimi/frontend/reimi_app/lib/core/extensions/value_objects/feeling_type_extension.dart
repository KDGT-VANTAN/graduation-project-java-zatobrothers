import 'package:flutter/material.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/domain/value_objects/feeling_type.dart';

extension FeelingTypeExtension on FeelingType {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.feelingType;
    switch (this) {
      case FeelingType.freezing:
        return t.freezing;
      case FeelingType.cold:
        return t.cold;
      case FeelingType.comfortable:
        return t.comfortable;
      case FeelingType.warm:
        return t.warm;
      case FeelingType.notApplicable:
        return t.notApplicable;
    }
  }
}
