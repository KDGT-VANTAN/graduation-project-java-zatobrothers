import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/data/models/weather_report_model.dart';
part 'weather_report_detail_state.freezed.dart';

@freezed
abstract class WeatherReportDetailState with _$WeatherReportDetailState {
  const factory WeatherReportDetailState({
    WeatherReportModel? weatherReport,
  }) = _WeatherReportDetailState;
}
