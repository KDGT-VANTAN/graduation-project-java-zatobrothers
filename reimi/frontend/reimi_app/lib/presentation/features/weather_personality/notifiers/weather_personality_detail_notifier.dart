import 'dart:async';

import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/presentation/features/weather_personality/states/weather_personality_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_personality_detail_notifier.g.dart';

@riverpod
class WeatherPersonalityDetailNotifier
    extends _$WeatherPersonalityDetailNotifier {
  @override
  WeatherPersonalityDetailState build() {
    return const WeatherPersonalityDetailState();
  }

  Future<void> init(String? userId) async {
    await loadWeatherPersonality(userId);
  }

  Future<void> loadWeatherPersonality(String? userId) async {
    if (userId == null) return;
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final weatherPersonality = await ref
          .read(getWeatherPersonalityDetailUseCaseProvider)
          .call(userId);
      state = state.copyWith(
        weatherPersonality: weatherPersonality,
        isLoading: false,
      );
      await isMyWeatherPersonality(userId);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> isMyWeatherPersonality(String userId) async {
    final user = await ref.read(getCurrentUserUseCaseProvider).call();
    final isMyWeatherPersonality = userId == user.id;
    state = state.copyWith(isMyWeatherPersonality: isMyWeatherPersonality);
  }

  Future<void> refresh(String userId) async {
    await loadWeatherPersonality(userId);
  }
}
