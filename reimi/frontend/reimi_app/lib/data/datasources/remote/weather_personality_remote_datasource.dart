import 'package:reimi_app/data/dtos/test_weather_personality_dto.dart';
import 'package:reimi_app/domain/read_models/weather_personality_result_read_model.dart';

abstract class WeatherPersonalityRemoteDataSource {
  Future<void> testWeatherPersonality(TestWeatherPersonalityDto dto);
  Future<WeatherPersonalityResultReadModel> fetchWeatherPersonalityResult();
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
}
