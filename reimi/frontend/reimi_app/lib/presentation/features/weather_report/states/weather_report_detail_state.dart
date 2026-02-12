import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/weather_report_read_model.dart';
part 'weather_report_detail_state.freezed.dart';

@freezed
abstract class WeatherReportDetailState with _$WeatherReportDetailState {
  const factory WeatherReportDetailState({
    WeatherReportReadModel? weatherReport,
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default(false) bool isMyReport,
    String? comment,
  }) = _WeatherReportDetailState;
}
