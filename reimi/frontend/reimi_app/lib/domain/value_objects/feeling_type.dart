import 'package:freezed_annotation/freezed_annotation.dart';

enum FeelingType {
  @JsonValue('VERY_COLD')
  veryCold, // 極寒
  @JsonValue('COLD')
  cold, // 寒い
  @JsonValue('COMFORTABLE')
  comfortable, // ちょうどいい
  @JsonValue('WARM')
  warm, // 暖かい
  @JsonValue('NOT_APPLICABLE')
  notApplicable, // あてはまらない
}
