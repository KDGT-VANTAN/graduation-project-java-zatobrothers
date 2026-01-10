import 'package:reimi_app/domain/read_models/weather_report_read_model.dart';
import 'package:reimi_app/domain/repositories/weather_report_repository.dart';

class GetWeatherReportUseCase {
  const GetWeatherReportUseCase(this._repository);

  final WeatherReportRepository _repository;

  Future<WeatherReportReadModel?> call(String reportId) {
    return _repository.fetchWeatherReport(reportId);
  }
}
