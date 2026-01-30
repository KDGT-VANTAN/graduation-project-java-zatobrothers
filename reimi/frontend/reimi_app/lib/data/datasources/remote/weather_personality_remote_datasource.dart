import 'package:dio/dio.dart';
import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/data/dtos/test_weather_personality_dto.dart';
import 'package:reimi_app/data/dtos/weather_personality_detail_dto.dart';
import 'package:reimi_app/data/dtos/weather_personality_result_dto.dart';

abstract class WeatherPersonalityRemoteDataSource {
  Future<void> testWeatherPersonality(TestWeatherPersonalityDto dto);
  Future<WeatherPersonalityResultDto> fetchWeatherPersonalityResult();
  Future<WeatherPersonalityDetailDto> fetchWeatherPersonalityDetail(
    String userId,
  );
}

class WeatherPersonalityRemoteDataSourceImpl
    implements WeatherPersonalityRemoteDataSource {
  const WeatherPersonalityRemoteDataSourceImpl(this._dio);
  final Dio _dio;

  @override
  Future<void> testWeatherPersonality(TestWeatherPersonalityDto dto) async {
    try {
      final response = await _dio.post(
        '/api/v1/user-weather-personality-type',
        data: dto.toJson(),
        options: Options(
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

  @override
  Future<WeatherPersonalityResultDto> fetchWeatherPersonalityResult() async {
    try {
      final response = await _dio.get('/api/v1/user-weather-personality-type');
      return WeatherPersonalityResultDto.fromJson(response.data);
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }

  @override
  Future<WeatherPersonalityDetailDto> fetchWeatherPersonalityDetail(
    String userId,
  ) {
    // TODO: implement fetchWeatherPersonalityDetail
    throw UnimplementedError();
  }
}
