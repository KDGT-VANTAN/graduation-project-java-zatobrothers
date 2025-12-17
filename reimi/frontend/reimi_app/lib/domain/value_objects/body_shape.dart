import 'package:freezed_annotation/freezed_annotation.dart';

enum BodyShape {
  @JsonValue('SLIM')
  slim,
  @JsonValue('SLENDER')
  slender,
  @JsonValue('NORMAL')
  normal,
  @JsonValue('MUSCULAR')
  muscular,
  @JsonValue('CHUBBY')
  chubby,
  @JsonValue('OVERWEIGHT')
  overweight,
}
