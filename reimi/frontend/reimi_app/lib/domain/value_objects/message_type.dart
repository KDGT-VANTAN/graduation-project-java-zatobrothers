import 'package:freezed_annotation/freezed_annotation.dart';

enum MessageType {
  @JsonValue('TEXT')
  text,
  @JsonValue('IMAGE')
  image,
  @JsonValue('STAMP')
  stamp,
  @JsonValue('FILE')
  file,
}