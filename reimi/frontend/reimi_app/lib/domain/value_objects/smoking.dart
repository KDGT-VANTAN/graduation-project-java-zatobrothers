import 'package:freezed_annotation/freezed_annotation.dart';

enum Smoking {
  @JsonValue('NO')
  no,
  @JsonValue('SOMETIMES')
  sometimes,
  @JsonValue('YES')
  yes,
}
