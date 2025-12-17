import 'package:freezed_annotation/freezed_annotation.dart';

enum BloodType {
  @JsonValue('A')
  a,
  @JsonValue('B')
  b,
  @JsonValue('O')
  o,
  @JsonValue('AB')
  ab,
  @JsonValue('UNKNOWN')
  unknown,
}
