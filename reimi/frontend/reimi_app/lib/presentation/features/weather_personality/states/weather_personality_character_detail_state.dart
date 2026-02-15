import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/weather_personality_character_detail_read_model.dart';

part 'weather_personality_character_detail_state.freezed.dart';

@freezed
abstract class WeatherPersonalityCharacterDetailState
    with _$WeatherPersonalityCharacterDetailState {
  const factory WeatherPersonalityCharacterDetailState({
    WeatherPersonalityCharacterDetailReadModel? character,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _WeatherPersonalityCharacterDetailState;
}
