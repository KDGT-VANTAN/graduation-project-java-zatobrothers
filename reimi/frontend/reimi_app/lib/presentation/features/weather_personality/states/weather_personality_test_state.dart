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
    @Default(WeatherPersonalityTestStatus.idle) WeatherPersonalityTestStatus status,
    String? errorMessage,
  }) = _WeatherPersonalityTestState;
}

enum WeatherPersonalityTestStatus {
  idle,
  submitting,
  success,
  failure,
}
