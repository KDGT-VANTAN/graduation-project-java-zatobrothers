import 'package:dio/dio.dart';
import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/data/dtos/post_weather_report_dto.dart';
import 'package:reimi_app/data/dtos/weather_report_detail_dto.dart';
import 'package:reimi_app/data/dtos/weather_report_dto.dart';
import 'package:reimi_app/data/mapper/post_weather_report_mapper.dart';

abstract class WeatherReportRemoteDataSource {
  Future<List<WeatherReportDto>> fetchWeatherReports();
  Future<List<WeatherReportDto>> fetchMyWeatherReports();
  Future<WeatherReportDetailDto?> fetchWeatherReport(String reportId);
  Future<void> postWeatherReport(PostWeatherReportDto dto);
}

class WeatherReportRemoteDataSourceImpl
    implements WeatherReportRemoteDataSource {
  const WeatherReportRemoteDataSourceImpl(this._dio);
  final Dio _dio;

  @override
  Future<List<WeatherReportDto>> fetchWeatherReports() async {
    try {
      final response = await _dio.get('/api/v1/weather-reports');
      final List data = response.data as List;
      return data
          .map((e) => WeatherReportDto.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }

  @override
  Future<List<WeatherReportDto>> fetchMyWeatherReports() async {
    return [];
  }

  @override
  Future<WeatherReportDetailDto?> fetchWeatherReport(String reportId) {
    // TODO: implement fetchWeatherReport
    throw UnimplementedError();
  }

  @override
  Future<void> postWeatherReport(PostWeatherReportDto dto) async {
    final formData = await dto.toFormData();
    try {
      final response = await _dio.post(
        '/api/v1/weather-reports',
        data: formData,
        options: Options(
          contentType: 'multipart/form-data',
          validateStatus: (_) => true,
        ),
      );
      if (response.statusCode != 201) {
        throw ApiException.fromResponse(response);
      }
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }
}
