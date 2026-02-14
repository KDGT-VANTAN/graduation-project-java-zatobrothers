import 'package:flutter/material.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/domain/value_objects/forecast_type.dart';

extension ForecastTypeExtension on ForecastType {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.forecastType;
    switch (this) {
      case ForecastType.noChange:
        return t.noChange;
      case ForecastType.improving:
        return t.improving;
      case ForecastType.deteriorating:
        return t.deteriorating;
    }
  }
}
