import 'dart:async';

import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/presentation/features/weather_personality/states/weather_personality_character_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_personality_character_detail_notifier.g.dart';

@riverpod
class WeatherPersonalityCharacterDetailNotifier
    extends _$WeatherPersonalityCharacterDetailNotifier {
  @override
  WeatherPersonalityCharacterDetailState build() {
    return const WeatherPersonalityCharacterDetailState();
  }

  Future<void> init(String? typeCode) async {
    await loadWeatherPersonalityCharacter(typeCode);
  }

  Future<void> loadWeatherPersonalityCharacter(String? typeCode) async {
    if (typeCode == null) return;
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final character = await ref
          .read(getWeatherPersonalityCharacterDetailUseCaseProvider)
          .call();
      state = state.copyWith(
        character: character,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> refresh(String? typeCode) async {
    if (typeCode == null) return;
    await loadWeatherPersonalityCharacter(typeCode);
  }
}
