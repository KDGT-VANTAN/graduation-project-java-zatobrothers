import 'package:reimi_app/domain/params/test_weather_personality_params.dart';
import 'package:reimi_app/domain/repositories/weather_personality_repository.dart';

class TestWeatherPersonalityUseCase {
  const TestWeatherPersonalityUseCase(this._repository);
  final WeatherPersonalityRepository _repository;

  Future<void> call(TestWeatherPersonalityParams params) {
    return _repository.testWeatherPersonality(params);
  }
}
