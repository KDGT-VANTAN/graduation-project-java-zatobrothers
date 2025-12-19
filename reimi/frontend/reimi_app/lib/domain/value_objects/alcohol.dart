import 'package:freezed_annotation/freezed_annotation.dart';

enum Alcohol {
  @JsonValue('NO')
  no,
  @JsonValue('SOMETIMES')
  sometimes,
  @JsonValue('YES')
  yes,
}