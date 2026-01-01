import 'package:flutter/material.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/domain/value_objects/weather_type.dart';

extension WeatherTypeExtension on WeatherType {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.weatherType;
    switch (this) {
      case WeatherType.clearStar:
        return t.clearStar;
      case WeatherType.faintStar:
        return t.faintStar;
      case WeatherType.noStar:
        return t.noStar;
      case WeatherType.drizzle:
        return t.drizzle;
      case WeatherType.lightRain:
        return t.lightRain;
      case WeatherType.rain:
        return t.rain;
      case WeatherType.heavyRain:
        return t.heavyRain;
    }
  }
}
