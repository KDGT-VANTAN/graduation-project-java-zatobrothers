import 'package:freezed_annotation/freezed_annotation.dart';

enum WeatherType {
  @JsonValue('CLEAR_STAR')
  clearStar, // 星がはっきり
  @JsonValue('FAINT_STAR')
  faintStar, // 星がうっすら
  @JsonValue('NO_STAR')
  noStar, // 星が見えない
  @JsonValue('DRIZZLE')
  drizzle, // ポツポツ
  @JsonValue('LIGHT_RAIN')
  lightRain, // パラパラ
  @JsonValue('RAIN')
  rain, // サー
  @JsonValue('HEAVY_RAIN')
  heavyRain, // サーサー
}
