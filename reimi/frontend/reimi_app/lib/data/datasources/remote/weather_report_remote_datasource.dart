import 'package:reimi_app/data/dtos/post_weather_report_dto.dart';
import 'package:reimi_app/data/dtos/weather_report_dto.dart';
import 'package:reimi_app/data/dtos/weather_report_simple_dto.dart';

abstract class WeatherReportRemoteDataSource {
  Future<List<WeatherReportSimpleDto>> fetchWeatherReports();
  Future<List<WeatherReportSimpleDto>> fetchMyWeatherReports();
  Future<WeatherReportDto?> fetchWeatherReport(String reportId);
  Future<void> postWeatherReport(PostWeatherReportDto dto);
}

class WeatherReportRemoteDataSourceImpl
    implements WeatherReportRemoteDataSource {
  const WeatherReportRemoteDataSourceImpl();

  @override
  Future<List<WeatherReportSimpleDto>> fetchWeatherReports() async {
    return [];
  }

  @override
  Future<List<WeatherReportSimpleDto>> fetchMyWeatherReports() async {
    return [];
  }

  @override
  Future<WeatherReportDto?> fetchWeatherReport(String reportId) {
    // TODO: implement fetchWeatherReport
    throw UnimplementedError();
  }

  @override
  Future<void> postWeatherReport(PostWeatherReportDto dto) {
    // TODO: implement postWeatherReport
    throw UnimplementedError();
  }
}
