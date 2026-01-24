import 'package:reimi_app/domain/read_models/weather_personality_detail_read_model.dart';
import 'package:reimi_app/domain/repositories/weather_personality_repository.dart';

class GetWeatherPersonalityDetailUseCase {
  const GetWeatherPersonalityDetailUseCase(this._repository);
  final WeatherPersonalityRepository _repository;

  Future<WeatherPersonalityDetailReadModel> call() {
    return _repository.fetchWeatherPersonalityDetail();
  }
}
