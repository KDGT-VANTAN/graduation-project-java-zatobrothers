import 'package:json_annotation/json_annotation.dart';

enum WeatherPersonalityPolarity {
  @JsonValue('SENSITIVE')
  sensitive,

  @JsonValue('NEUTRAL')
  neutral,

  @JsonValue('PLANNED')
  planned,

  @JsonValue('FLEXIBLE')
  flexible,

  @JsonValue('OUTDOOR')
  outdoor,

  @JsonValue('INDOOR')
  indoor,

  @JsonValue('EMOTIONAL')
  emotional,

  @JsonValue('RATIONAL')
  rational,
}
