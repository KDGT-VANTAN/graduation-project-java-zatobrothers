import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/weather_report_read_model.dart';

part 'my_weather_report_state.freezed.dart';

@freezed
abstract class MyWeatherReportState with _$MyWeatherReportState {
  const factory MyWeatherReportState({
    @Default(<WeatherReportReadModel>[])
    List<WeatherReportReadModel> weatherReports,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _MyWeatherReportState;
}
