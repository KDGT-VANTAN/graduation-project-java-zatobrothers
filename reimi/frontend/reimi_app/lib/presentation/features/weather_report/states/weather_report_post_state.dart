import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/data/models/weather_report_post_model.dart';

part 'weather_report_post_state.freezed.dart';

@freezed
abstract class WeatherReportPostState with _$WeatherReportPostState {
  const factory WeatherReportPostState({
    WeatherReportPostModel? data,
    @Default(false) bool canSubmit,
    @Default(false) bool isSubmitting,
    @Default(false) bool isChanged,
  }) = _WeatherReportPostState;
}
