import 'package:flutter/material.dart';
import 'package:reimi_app/domain/value_objects/body_shape.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';

extension BodyShapeExtension on BodyShape {
  String displayName(BuildContext context) {
    final t = Translations.of(context).kEnum.bodyShape;
    switch (this) {
      case BodyShape.slim:
        return t.slim;
      case BodyShape.slender:
        return t.slender;
      case BodyShape.normal:
        return t.normal;
      case BodyShape.muscular:
        return t.muscular;
      case BodyShape.chubby:
        return t.chubby;
      case BodyShape.overweight:
        return t.overweight;
    }
  }
}
