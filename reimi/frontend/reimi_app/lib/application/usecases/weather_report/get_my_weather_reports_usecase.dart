import 'package:reimi_app/domain/read_models/weather_report_read_model.dart';
import 'package:reimi_app/domain/repositories/weather_report_repository.dart';

class GetMyWeatherReportsUseCase {
  const GetMyWeatherReportsUseCase(this._repository);

  final WeatherReportRepository _repository;

  Future<List<WeatherReportReadModel>> call() {
    return _repository.fetchMyWeatherReports();
  }
}
