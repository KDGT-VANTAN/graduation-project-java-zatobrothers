import 'package:flutter/material.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_axis.dart';

extension WeatherPersonalityAxisExtension on WeatherPersonalityAxis {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.weatherPersonalityAxis;
    switch (this) {
      case WeatherPersonalityAxis.sensitivity:
        return t.sensitivity;
      case WeatherPersonalityAxis.preparedness:
        return t.preparedness;
      case WeatherPersonalityAxis.activity:
        return t.activity;
      case WeatherPersonalityAxis.motivation:
        return t.motivation;
    }
  }
}
