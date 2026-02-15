import 'package:reimi_app/domain/read_models/weather_personality_character_read_model.dart';
import 'package:reimi_app/domain/repositories/weather_personality_repository.dart';

class GetWeatherPersonalityCharactersUseCase {
  const GetWeatherPersonalityCharactersUseCase(this._repository);
  final WeatherPersonalityRepository _repository;

  Future<List<WeatherPersonalityCharacterReadModel>> call() {
    return _repository.fetchWeatherPersonalityCharacters();
  }
}
