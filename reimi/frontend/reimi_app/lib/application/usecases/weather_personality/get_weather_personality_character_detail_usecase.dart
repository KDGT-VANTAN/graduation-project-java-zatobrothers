import 'package:reimi_app/domain/read_models/weather_personality_character_detail_read_model.dart';
import 'package:reimi_app/domain/repositories/weather_personality_repository.dart';

class GetWeatherPersonalityCharacterDetailUseCase {
  const GetWeatherPersonalityCharacterDetailUseCase(this._repository);
  final WeatherPersonalityRepository _repository;

  Future<WeatherPersonalityCharacterDetailReadModel> call(String typeCode) {
    return _repository.fetchWeatherPersonalityCharacter(typeCode);
  }
}
