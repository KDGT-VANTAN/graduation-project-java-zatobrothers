import 'package:freezed_annotation/freezed_annotation.dart';

enum Holiday {
  @JsonValue('WEEKEND')
  weekend,
  @JsonValue('WEEKDAY')
  weekday,
  @JsonValue('IRREGULAR')
  irregular,
}