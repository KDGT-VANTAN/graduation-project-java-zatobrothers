import 'package:freezed_annotation/freezed_annotation.dart';

enum UserAuthProvider {
  @JsonValue('GOOGLE')
  google,
  @JsonValue('APPLE')
  apple,
}