import 'package:freezed_annotation/freezed_annotation.dart';

enum WeatherType {
  @JsonValue('CLEAR_STARS')
  clearStars, // 星がはっきり
  @JsonValue('FAINT_STARS')
  faintStars, // 星がうっすら
  @JsonValue('NO_STARS')
  noStars, // 星が見えない
  @JsonValue('DRIZZLE')
  drizzle, // ポツポツ
  @JsonValue('LIGHT_RAIN')
  lightRain, // パラパラ
  @JsonValue('RAIN')
  rain, // サー
  @JsonValue('HEAVY_RAIN')
  heavyRain, // サーサー
}
