import 'dart:async';

import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/presentation/features/weather_personality/states/weather_personality_test_result_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_personality_test_result_notifier.g.dart';

@riverpod
class WeatherPersonalityTestResultNotifier
    extends _$WeatherPersonalityTestResultNotifier {
  @override
  WeatherPersonalityTestResultState build() {
    return const WeatherPersonalityTestResultState();
  }

  Future<void> init() async {
    await loadWeatherPersonalityTestResult();
  }

  Future<void> loadWeatherPersonalityTestResult() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final weatherPersonality =
          await ref.read(getWeatherPersonalityResultUseCaseProvider).call();
      state = state.copyWith(
        weatherPersonality: weatherPersonality,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }
}
