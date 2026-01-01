import 'package:reimi_app/data/models/weather_report_model.dart';
import 'package:reimi_app/data/models/weather_report_simple_model.dart';

abstract class WeatherReportRepository {
  Future<List<WeatherReportSimpleModel>> fetchWeatherReports();
  Future<WeatherReportModel?> fetchWeatherReport(String reportId);
}
