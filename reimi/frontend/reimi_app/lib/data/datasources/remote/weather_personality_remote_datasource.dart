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
  const WeatherPersonalityRemoteDataSourceImpl();

  @override
  Future<void> testWeatherPersonality(TestWeatherPersonalityDto dto) {
    // TODO: implement postWeatherReport
    throw UnimplementedError();
  }

  @override
  Future<WeatherPersonalityResultDto> fetchWeatherPersonalityResult() {
    // TODO: implement fetchWeatherPersonalityResult
    throw UnimplementedError();
  }

  @override
  Future<WeatherPersonalityDetailDto> fetchWeatherPersonalityDetail(
    String userId,
  ) {
    // TODO: implement fetchWeatherPersonalityDetail
    throw UnimplementedError();
  }
}
