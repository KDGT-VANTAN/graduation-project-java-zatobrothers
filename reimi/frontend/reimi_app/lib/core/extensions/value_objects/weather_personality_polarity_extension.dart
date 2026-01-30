import 'package:flutter/material.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_polarity.dart';

extension WeatherPersonalityPolarityExtension on WeatherPersonalityPolarity {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.weatherPersonalityPolarity;
    switch (this) {
      case WeatherPersonalityPolarity.sensitive:
        return t.sensitive;
      case WeatherPersonalityPolarity.neutral:
        return t.neutral;
      case WeatherPersonalityPolarity.planned:
        return t.planned;
      case WeatherPersonalityPolarity.flexible:
        return t.flexible;
      case WeatherPersonalityPolarity.outdoor:
        return t.outdoor;
      case WeatherPersonalityPolarity.indoor:
        return t.indoor;
      case WeatherPersonalityPolarity.emotional:
        return t.emotional;
      case WeatherPersonalityPolarity.rational:
        return t.rational;
    }
  }
}
