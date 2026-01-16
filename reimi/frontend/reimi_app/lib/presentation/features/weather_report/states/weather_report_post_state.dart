import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/feeling_type.dart';
import 'package:reimi_app/domain/value_objects/forecast_type.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';
import 'package:reimi_app/domain/value_objects/weather_type.dart';

part 'weather_report_post_state.freezed.dart';

@freezed
abstract class WeatherReportPostState with _$WeatherReportPostState {
  const factory WeatherReportPostState({
    String? comment,
    WeatherType? weatherType,
    FeelingType? feelingType,
    ForecastType? forecastType,
    MediaType? mediaType,
    String? url,
    double? latitude,
    double? longitude,
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
      url?.isNotEmpty == true;
}

enum WeatherReportPostStatus {
  idle,
  submitting,
  success,
  failure,
}
