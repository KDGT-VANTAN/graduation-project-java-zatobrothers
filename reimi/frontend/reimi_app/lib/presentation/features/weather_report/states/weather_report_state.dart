import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/data/models/weather_report_simple_model.dart';

part 'weather_report_state.freezed.dart';

@freezed
abstract class WeatherReportState with _$WeatherReportState {
  const factory WeatherReportState({
    @Default(<WeatherReportSimpleModel>[])
    List<WeatherReportSimpleModel> weatherReports,
  }) = _WeatherReportState;
}
