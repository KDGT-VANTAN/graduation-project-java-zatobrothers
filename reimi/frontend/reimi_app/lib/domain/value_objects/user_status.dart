import 'package:freezed_annotation/freezed_annotation.dart';

enum UserStatus {
  @JsonValue('ACTIVE')
  active,
  @JsonValue('WITHDRAWN')
  withdrawn,
  @JsonValue('BANNED')
  banned,
  @JsonValue('SUSPENDED')
  suspended,
}
