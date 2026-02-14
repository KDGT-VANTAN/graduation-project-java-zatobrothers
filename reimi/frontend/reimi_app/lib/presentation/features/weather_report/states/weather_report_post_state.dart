import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/feeling_type.dart';
import 'package:reimi_app/domain/value_objects/forecast_type.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';
import 'package:reimi_app/domain/value_objects/prefecture_city.dart';
import 'package:reimi_app/domain/value_objects/weather_type.dart';
import 'package:reimi_app/domain/value_objects/wind_direction.dart';

part 'weather_report_post_state.freezed.dart';

@freezed
abstract class WeatherReportPostState with _$WeatherReportPostState {
  const factory WeatherReportPostState({
    String? comment,
    WeatherType? weatherType,
    FeelingType? feelingType,
    ForecastType? forecastType,
    MediaType? mediaType,
    String? weatherPhoto,
    double? latitude,
    double? longitude,
    double? temperature,
    double? humidity,
    double? pressure,
    double? windSpeed,
    WindDirection? windDirection,
    PrefectureCity? prefectureCity,
    @Default(false) bool isChanged,
    @Default(WeatherReportPostStatus.idle) WeatherReportPostStatus status,
    String? errorMessage,
  }) = _WeatherReportPostState;

  const WeatherReportPostState._();

  bool get canSubmit =>
      comment?.isNotEmpty == true &&
      weatherType != null &&
      feelingType != null &&
      forecastType != null &&
      mediaType != null &&
      weatherPhoto?.isNotEmpty == true &&
      latitude != null &&
      longitude != null;
}

enum WeatherReportPostStatus {
  idle,
  submitting,
  success,
  failure,
}
