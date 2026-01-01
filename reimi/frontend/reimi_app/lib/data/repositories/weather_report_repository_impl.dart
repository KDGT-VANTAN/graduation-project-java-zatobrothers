import 'package:reimi_app/data/datasources/weather_report_remote_datasource.dart';
import 'package:reimi_app/data/models/weather_report_model.dart';
import 'package:reimi_app/data/models/weather_report_simple_model.dart';
import 'package:reimi_app/domain/repositories/weather_report_repository.dart';

class WeatherReportRepositoryImpl implements WeatherReportRepository {
  const WeatherReportRepositoryImpl(this._remote);
  final WeatherReportRemoteDataSource _remote;

  @override
  Future<List<WeatherReportSimpleModel>> fetchWeatherReports() {
    return _remote.fetchWeatherReports();
  }

  @override
  Future<WeatherReportModel?> fetchWeatherReport(String reportId) {
    return _remote.fetchWeatherReport(reportId);
  }
}
