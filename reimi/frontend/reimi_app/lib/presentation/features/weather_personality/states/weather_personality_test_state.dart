import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/answer_choice.dart';

part 'weather_personality_test_state.freezed.dart';

@freezed
abstract class WeatherPersonalityTestState with _$WeatherPersonalityTestState {
  const factory WeatherPersonalityTestState({
    AnswerChoice? q1Answer,
    AnswerChoice? q2Answer,
    AnswerChoice? q3Answer,
    AnswerChoice? q4Answer,
    AnswerChoice? q5Answer,
    AnswerChoice? q6Answer,
    AnswerChoice? q7Answer,
    AnswerChoice? q8Answer,
    AnswerChoice? q9Answer,
    AnswerChoice? q10Answer,
    AnswerChoice? q11Answer,
    AnswerChoice? q12Answer,
    AnswerChoice? q13Answer,
    AnswerChoice? q14Answer,
    AnswerChoice? q15Answer,
    AnswerChoice? q16Answer,
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
