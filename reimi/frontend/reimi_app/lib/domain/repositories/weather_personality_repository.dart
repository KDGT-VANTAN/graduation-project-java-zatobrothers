import 'package:reimi_app/domain/params/test_weather_personality_params.dart';
import 'package:reimi_app/domain/read_models/weather_personality_character_detail_read_model.dart';
import 'package:reimi_app/domain/read_models/weather_personality_character_read_model.dart';
import 'package:reimi_app/domain/read_models/weather_personality_detail_read_model.dart';
import 'package:reimi_app/domain/read_models/weather_personality_result_read_model.dart';

abstract class WeatherPersonalityRepository {
  Future<void> testWeatherPersonality(TestWeatherPersonalityParams params);
  Future<WeatherPersonalityResultReadModel> fetchWeatherPersonalityResult();
  Future<WeatherPersonalityDetailReadModel> fetchWeatherPersonalityDetail(
    String userId,
  );
  Future<List<WeatherPersonalityCharacterReadModel>>
      fetchWeatherPersonalityCharacters();
  Future<WeatherPersonalityCharacterDetailReadModel>
      fetchWeatherPersonalityCharacter(String typeCode);
}
