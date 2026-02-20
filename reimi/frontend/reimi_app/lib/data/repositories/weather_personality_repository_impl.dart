import 'package:reimi_app/data/datasources/remote/weather_personality_remote_datasource.dart';
import 'package:reimi_app/data/mapper/test_weather_personality_mapper.dart';
import 'package:reimi_app/data/mapper/weather_personality_character_detail_mapper.dart';
import 'package:reimi_app/data/mapper/weather_personality_character_mapper.dart';
import 'package:reimi_app/data/mapper/weather_personality_detail_mapper.dart';
import 'package:reimi_app/data/mapper/weather_personality_result_mapper.dart';
import 'package:reimi_app/domain/params/test_weather_personality_params.dart';
import 'package:reimi_app/domain/read_models/weather_personality_character_detail_read_model.dart';
import 'package:reimi_app/domain/read_models/weather_personality_character_read_model.dart';
import 'package:reimi_app/domain/read_models/weather_personality_detail_read_model.dart';
import 'package:reimi_app/domain/read_models/weather_personality_result_read_model.dart';
import 'package:reimi_app/domain/repositories/weather_personality_repository.dart';

class WeatherPersonalityRepositoryImpl implements WeatherPersonalityRepository {
  const WeatherPersonalityRepositoryImpl(this._remote);
  final WeatherPersonalityRemoteDataSource _remote;

  @override
  Future<void> testWeatherPersonality(TestWeatherPersonalityParams params) {
    final dto = params.toDto();
    return _remote.testWeatherPersonality(dto);
  }

  @override
  Future<WeatherPersonalityResultReadModel>
      fetchWeatherPersonalityResult() async {
    final dto = await _remote.fetchWeatherPersonalityResult();
    return dto.toReadModel();
  }

  @override
  Future<WeatherPersonalityDetailReadModel> fetchWeatherPersonalityDetail(
    String userId,
  ) async {
    final dto = await _remote.fetchWeatherPersonalityDetail(userId);
    return dto.toReadModel();
  }

  @override
  Future<WeatherPersonalityCharacterDetailReadModel>
      fetchWeatherPersonalityCharacter(String typeCode) async {
    final dto = await _remote.fetchWeatherPersonalityCharacter(typeCode);
    return dto.toReadModel();
  }

  @override
  Future<List<WeatherPersonalityCharacterReadModel>>
      fetchWeatherPersonalityCharacters() async {
    final dto = await _remote.fetchWeatherPersonalityCharacters();
    return dto.toReadModels();
  }
}
