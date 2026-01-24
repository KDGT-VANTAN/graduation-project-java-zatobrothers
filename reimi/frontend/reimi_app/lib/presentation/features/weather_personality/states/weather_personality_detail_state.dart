import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/weather_personality_detail_read_model.dart';

part 'weather_personality_detail_state.freezed.dart';

@freezed
abstract class WeatherPersonalityDetailState
    with _$WeatherPersonalityDetailState {
  const factory WeatherPersonalityDetailState({
    WeatherPersonalityDetailReadModel? weatherPersonality,
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default(false) bool isMyWeatherPersonality,
  }) = _WeatherPersonalityDetailState;
}
