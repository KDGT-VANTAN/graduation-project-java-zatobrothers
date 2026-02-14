import 'package:reimi_app/domain/read_models/weather_report_read_model.dart';
import 'package:reimi_app/domain/repositories/weather_report_repository.dart';

class GetWeatherReportsUseCase {
  const GetWeatherReportsUseCase(this._repository);

  final WeatherReportRepository _repository;

  Future<List<WeatherReportReadModel>> call() {
    return _repository.fetchWeatherReports();
  }
}
