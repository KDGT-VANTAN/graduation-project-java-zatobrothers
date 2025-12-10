import 'package:freezed_annotation/freezed_annotation.dart';

enum Gender {
  @JsonValue('男性')
  man,
  @JsonValue('女性')
  woman,
  @JsonValue('その他')
  others,
}
