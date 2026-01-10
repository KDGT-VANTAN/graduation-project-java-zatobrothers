import 'package:reimi_app/data/dtos/post_weather_report_dto.dart';
import 'package:reimi_app/domain/read_models/weather_report_read_model.dart';
import 'package:reimi_app/domain/read_models/weather_report_simple_read_model.dart';

abstract class WeatherReportRemoteDataSource {
  Future<List<WeatherReportSimpleReadModel>> fetchWeatherReports();
  Future<WeatherReportReadModel?> fetchWeatherReport(String reportId);
  Future<void> postWeatherReport(PostWeatherReportDto dto);
}

class WeatherReportRemoteDataSourceImpl
    implements WeatherReportRemoteDataSource {
  const WeatherReportRemoteDataSourceImpl();

  @override
  Future<List<WeatherReportSimpleReadModel>> fetchWeatherReports() async {
    return [];
  }

  @override
  Future<WeatherReportReadModel> fetchWeatherReport(String reportId) {
    // TODO: implement fetchWeatherReport
    throw UnimplementedError();
  }

  @override
  Future<void> postWeatherReport(PostWeatherReportDto dto) {
    // TODO: implement postWeatherReport
    throw UnimplementedError();
  }
}
