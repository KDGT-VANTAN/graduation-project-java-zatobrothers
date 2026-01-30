import 'package:json_annotation/json_annotation.dart';

enum WeatherPersonalityCode {
  @JsonValue('SPOE')
  spoe,
  @JsonValue('SPOR')
  spor,
  @JsonValue('SPIE')
  spie,
  @JsonValue('SPIR')
  spir,

  @JsonValue('SFOE')
  sfoe,
  @JsonValue('SFOR')
  sfor,
  @JsonValue('SFIE')
  sfie,
  @JsonValue('SFIR')
  sfir,

  @JsonValue('NPOE')
  npoe,
  @JsonValue('NPOR')
  npor,
  @JsonValue('NPIE')
  npie,
  @JsonValue('NPIR')
  npir,

  @JsonValue('NFOE')
  nfoe,
  @JsonValue('NFOR')
  nfor,
  @JsonValue('NFIE')
  nfie,
  @JsonValue('NFIR')
  nfir;

  String get displayCode {
    return name.toUpperCase();
  }
}
