import 'package:reimi_app/data/models/weather_report_model.dart';
import 'package:reimi_app/data/models/weather_report_simple_model.dart';

abstract class WeatherReportRemoteDataSource {
  Future<List<WeatherReportSimpleModel>> fetchWeatherReports();
  Future<WeatherReportModel?> fetchWeatherReport(String reportId);
}

class WeatherReportRemoteDataSourceImpl
    implements WeatherReportRemoteDataSource {
  const WeatherReportRemoteDataSourceImpl();

  @override
  Future<List<WeatherReportSimpleModel>> fetchWeatherReports() async {
    return [];
  }

  @override
  Future<WeatherReportModel> fetchWeatherReport(String reportId) {
    // TODO: implement fetchWeatherReport
    throw UnimplementedError();
  }
}
