import 'package:freezed_annotation/freezed_annotation.dart';

enum Gender {
  @JsonValue('MAN')
  man,
  @JsonValue('WOMAN')
  woman,
  @JsonValue('OTHER')
  other,
}
