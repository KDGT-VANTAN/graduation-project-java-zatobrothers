import 'package:reimi_app/data/datasources/remote/weather_report_remote_datasource.dart';
import 'package:reimi_app/data/mapper/post_weather_report_mapper.dart';
import 'package:reimi_app/data/mapper/weather_report_mapper.dart';
import 'package:reimi_app/data/mapper/weather_report_simple_mapper.dart';
import 'package:reimi_app/domain/params/post_weather_report_params.dart';
import 'package:reimi_app/domain/read_models/weather_report_read_model.dart';
import 'package:reimi_app/domain/read_models/weather_report_simple_read_model.dart';
import 'package:reimi_app/domain/repositories/weather_report_repository.dart';

class WeatherReportRepositoryImpl implements WeatherReportRepository {
  const WeatherReportRepositoryImpl(this._remote);
  final WeatherReportRemoteDataSource _remote;

  @override
  Future<List<WeatherReportSimpleReadModel>> fetchWeatherReports() async {
    final dtos = await _remote.fetchWeatherReports();
    return dtos.toReadModels();
  }

  @override
  Future<List<WeatherReportSimpleReadModel>> fetchMyWeatherReports() async {
    final dtos = await _remote.fetchMyWeatherReports();
    return dtos.toReadModels();
  }

  @override
  Future<WeatherReportReadModel?> fetchWeatherReport(String reportId) async {
    final dto = await _remote.fetchWeatherReport(reportId);
    return dto?.toReadModel();
  }

  @override
  Future<void> postWeatherReport(PostWeatherReportParams params) {
    final dto = params.toDto();
    return _remote.postWeatherReport(dto);
  }
}
