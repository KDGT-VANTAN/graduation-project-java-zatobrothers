import 'package:flutter/material.dart';
import 'package:reimi_app/domain/value_objects/blood_type.dart';
import 'package:reimi_app/i18n/strings.g.dart';

extension BloodTypeExtension on BloodType {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.bloodType;
    switch (this) {
      case BloodType.a:
        return t.a;
      case BloodType.b:
        return t.b;
      case BloodType.o:
        return t.o;
      case BloodType.ab:
        return t.ab;
      case BloodType.unknown:
        return t.unknown;
    }
  }
}
