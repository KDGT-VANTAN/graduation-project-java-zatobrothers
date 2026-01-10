import 'package:json_annotation/json_annotation.dart';

enum MediaType {
  @JsonValue('IMAGE')
  image,
  @JsonValue('VIDEO')
  video,
}
