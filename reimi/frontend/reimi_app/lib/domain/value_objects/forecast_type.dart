import 'package:freezed_annotation/freezed_annotation.dart';

enum ForecastType {
  @JsonValue('NO_CHANGE')
  noChange, // 今と変化なさそう
  @JsonValue('IMPROVING')
  improving, // 回復しそう
  @JsonValue('DETERIORATING')
  deteriorating, // 下り坂になりそう
}
