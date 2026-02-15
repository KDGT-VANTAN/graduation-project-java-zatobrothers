import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/weather_personality_character_read_model.dart';

part 'weather_personality_characters_introduction_state.freezed.dart';

@freezed
abstract class WeatherPersonalityCharactersIntroductionState
    with _$WeatherPersonalityCharactersIntroductionState {
  const factory WeatherPersonalityCharactersIntroductionState({
    @Default(<WeatherPersonalityCharacterReadModel>[])
    List<WeatherPersonalityCharacterReadModel> characters,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _WeatherPersonalityCharactersIntroductionState;
}
