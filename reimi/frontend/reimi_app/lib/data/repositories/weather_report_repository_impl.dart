import 'package:reimi_app/data/datasources/remote/weather_report_remote_datasource.dart';
import 'package:reimi_app/data/extensions/post_weather_report_dto_extension.dart';
import 'package:reimi_app/domain/params/post_weather_report_params.dart';
import 'package:reimi_app/domain/read_models/weather_report_read_model.dart';
import 'package:reimi_app/domain/read_models/weather_report_simple_read_model.dart';
import 'package:reimi_app/domain/repositories/weather_report_repository.dart';

class WeatherReportRepositoryImpl implements WeatherReportRepository {
  const WeatherReportRepositoryImpl(this._remote);
  final WeatherReportRemoteDataSource _remote;

  @override
  Future<List<WeatherReportSimpleReadModel>> fetchWeatherReports() {
    return _remote.fetchWeatherReports();
  }

  @override
  Future<WeatherReportReadModel?> fetchWeatherReport(String reportId) {
    return _remote.fetchWeatherReport(reportId);
  }

  @override
  Future<void> postWeatherReport(PostWeatherReportParams params) {
    final dto = params.toDto();
    return _remote.postWeatherReport(dto);
  }
}
