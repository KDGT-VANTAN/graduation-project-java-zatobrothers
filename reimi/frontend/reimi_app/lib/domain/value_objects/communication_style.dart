import 'package:freezed_annotation/freezed_annotation.dart';

enum CommunicationStyle {
  @JsonValue('CALL')
  call,
  @JsonValue('MESSAGE')
  message,
  @JsonValue('IN_PERSON')
  inPerson,
}
