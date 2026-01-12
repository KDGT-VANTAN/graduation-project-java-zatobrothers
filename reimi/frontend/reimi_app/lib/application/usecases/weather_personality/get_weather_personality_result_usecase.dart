import 'package:reimi_app/domain/read_models/weather_personality_result_read_model.dart';
import 'package:reimi_app/domain/repositories/weather_personality_repository.dart';

class GetWeatherPersonalityResultUseCase {
  const GetWeatherPersonalityResultUseCase(this._repository);
  final WeatherPersonalityRepository _repository;

  Future<WeatherPersonalityResultReadModel> call() {
    return _repository.fetchWeatherPersonalityResult();
  }
}
