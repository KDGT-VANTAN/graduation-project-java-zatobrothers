import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/weather_report_read_model.dart';

part 'weather_report_state.freezed.dart';

@freezed
abstract class WeatherReportState with _$WeatherReportState {
  const factory WeatherReportState({
    @Default(<WeatherReportReadModel>[])
    List<WeatherReportReadModel> weatherReports,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _WeatherReportState;
}
