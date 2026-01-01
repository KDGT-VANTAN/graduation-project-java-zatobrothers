import 'package:json_annotation/json_annotation.dart';

enum MediaType {
  @JsonValue('PHOTO')
  photo,
  @JsonValue('VIDEO')
  video,
}
