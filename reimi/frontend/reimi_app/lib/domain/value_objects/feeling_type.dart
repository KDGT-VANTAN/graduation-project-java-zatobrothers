import 'package:freezed_annotation/freezed_annotation.dart';

enum FeelingType {
  @JsonValue('FREEZING')
  freezing, // 極寒
  @JsonValue('COLD')
  cold, // 寒い
  @JsonValue('COMFORTABLE')
  comfortable, // ちょうどいい
  @JsonValue('WARM')
  warm, // 暖かい
  @JsonValue('NOT_APPLICABLE')
  notApplicable, // あてはまらない
}
