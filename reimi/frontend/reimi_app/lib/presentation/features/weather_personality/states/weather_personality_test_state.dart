import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_personality_test_state.freezed.dart';

@freezed
abstract class WeatherPersonalityTestState with _$WeatherPersonalityTestState {
  const factory WeatherPersonalityTestState({
    int? q1Answer,
    int? q2Answer,
    int? q3Answer,
    int? q4Answer,
    int? q5Answer,
    int? q6Answer,
    int? q7Answer,
    int? q8Answer,
    int? q9Answer,
    int? q10Answer,
    int? q11Answer,
    int? q12Answer,
    int? q13Answer,
    int? q14Answer,
    int? q15Answer,
    int? q16Answer,
    @Default(1) int currentPage,
    @Default(16) int totalPages,
    @Default(WeatherPersonalityTestStatus.idle)
    WeatherPersonalityTestStatus status,
    String? errorMessage,
  }) = _WeatherPersonalityTestState;

  const WeatherPersonalityTestState._();

  bool get canSubmit =>
      q1Answer != null &&
      q2Answer != null &&
      q3Answer != null &&
      q4Answer != null &&
      q5Answer != null &&
      q6Answer != null &&
      q7Answer != null &&
      q8Answer != null &&
      q9Answer != null &&
      q10Answer != null &&
      q11Answer != null &&
      q12Answer != null &&
      q13Answer != null &&
      q14Answer != null &&
      q15Answer != null &&
      q16Answer != null;
}

enum WeatherPersonalityTestStatus {
  idle,
  submitting,
  success,
  failure,
}
