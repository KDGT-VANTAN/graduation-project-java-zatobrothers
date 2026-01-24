import 'package:reimi_app/data/datasources/remote/weather_personality_remote_datasource.dart';
import 'package:reimi_app/data/extensions/test_weather_personality_dto_extension.dart';
import 'package:reimi_app/domain/params/test_weather_personality_params.dart';
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
  Future<WeatherPersonalityResultReadModel> fetchWeatherPersonalityResult() {
    return _remote.fetchWeatherPersonalityResult();
  }

  @override
  Future<WeatherPersonalityDetailReadModel> fetchWeatherPersonalityDetail(String userId) {
    return _remote.fetchWeatherPersonalityDetail(userId);
  }
}
