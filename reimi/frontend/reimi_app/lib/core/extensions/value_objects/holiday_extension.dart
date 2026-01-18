import 'package:flutter/material.dart';
import 'package:reimi_app/domain/value_objects/holiday.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';

extension HolidayExtension on Holiday {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.holiday;
    switch (this) {
      case Holiday.weekend:
        return t.weekend;
      case Holiday.weekday:
        return t.weekday;
      case Holiday.irregular:
        return t.irregular;
    }
  }
}
