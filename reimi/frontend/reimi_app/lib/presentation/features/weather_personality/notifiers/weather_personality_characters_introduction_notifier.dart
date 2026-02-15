import 'dart:async';

import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/presentation/features/weather_personality/states/weather_personality_characters_introduction_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_personality_characters_introduction_notifier.g.dart';

@riverpod
class WeatherPersonalityCharactersIntroductionNotifier
    extends _$WeatherPersonalityCharactersIntroductionNotifier {
  @override
  WeatherPersonalityCharactersIntroductionState build() {
    return const WeatherPersonalityCharactersIntroductionState();
  }

  Future<void> init() async {
    await loadWeatherPersonalityCharacters();
  }

  Future<void> loadWeatherPersonalityCharacters() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final characters =
          await ref.read(getWeatherPersonalityCharactersUseCaseProvider).call();
      state = state.copyWith(
        characters: characters,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> refresh() async {
    await loadWeatherPersonalityCharacters();
  }
}
