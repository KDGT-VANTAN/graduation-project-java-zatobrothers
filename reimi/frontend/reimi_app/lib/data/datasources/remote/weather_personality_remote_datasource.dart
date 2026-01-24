import 'package:reimi_app/data/dtos/test_weather_personality_dto.dart';
import 'package:reimi_app/domain/read_models/weather_personality_detail_read_model.dart';
import 'package:reimi_app/domain/read_models/weather_personality_result_read_model.dart';

abstract class WeatherPersonalityRemoteDataSource {
  Future<void> testWeatherPersonality(TestWeatherPersonalityDto dto);
  Future<WeatherPersonalityResultReadModel> fetchWeatherPersonalityResult();
  Future<WeatherPersonalityDetailReadModel> fetchWeatherPersonalityDetail(String userId);
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
  Future<WeatherPersonalityResultReadModel> fetchWeatherPersonalityResult() {
    // TODO: implement fetchWeatherPersonalityResult
    throw UnimplementedError();
  }
  
  @override
  Future<WeatherPersonalityDetailReadModel> fetchWeatherPersonalityDetail(String userId) {
    // TODO: implement fetchWeatherPersonalityDetail
    throw UnimplementedError();
  }
}
