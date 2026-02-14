import 'package:reimi_app/domain/params/post_weather_report_params.dart';
import 'package:reimi_app/domain/read_models/weather_report_detail_read_model.dart';
import 'package:reimi_app/domain/read_models/weather_report_read_model.dart';

abstract class WeatherReportRepository {
  Future<List<WeatherReportReadModel>> fetchWeatherReports();
  Future<List<WeatherReportReadModel>> fetchMyWeatherReports();
  Future<WeatherReportDetailReadModel?> fetchWeatherReport(String reportId);
  Future<void> postWeatherReport(PostWeatherReportParams params);
}
