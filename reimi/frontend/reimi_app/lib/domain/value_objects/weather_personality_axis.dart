import 'package:json_annotation/json_annotation.dart';

enum WeatherPersonalityAxis {
  @JsonValue('SENSITIVITY')
  sensitivity,

  @JsonValue('PREPAREDNESS')
  preparedness,

  @JsonValue('ACTIVITY')
  activity,

  @JsonValue('MOTIVATION')
  motivation,
}
