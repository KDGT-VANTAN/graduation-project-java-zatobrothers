import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/weather_personality_result_read_model.dart';

part 'weather_personality_test_result_state.freezed.dart';

@freezed
abstract class WeatherPersonalityTestResultState
    with _$WeatherPersonalityTestResultState {
  const factory WeatherPersonalityTestResultState({
    WeatherPersonalityResultReadModel? weatherPersonality,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _WeatherPersonalityTestResultState;
}
