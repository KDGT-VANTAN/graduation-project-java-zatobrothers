import 'package:flutter/material.dart';
import 'package:reimi_app/domain/value_objects/wind_direction.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';

extension WindDirectionExtension on WindDirection {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.windDirection;
    switch (this) {
      case WindDirection.north:
        return t.north;
      case WindDirection.northEast:
        return t.northEast;
      case WindDirection.east:
        return t.east;
      case WindDirection.southEast:
        return t.southEast;
      case WindDirection.south:
        return t.south;
      case WindDirection.southWest:
        return t.southWest;
      case WindDirection.west:
        return t.west;
      case WindDirection.northWest:
        return t.northWest;
      case WindDirection.unknown:
        return t.unknown;
    }
  }
}
