import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/answer_choice.dart';

part 'test_weather_personality_dto.freezed.dart';
part 'test_weather_personality_dto.g.dart';

@freezed
abstract class TestWeatherPersonalityDto with _$TestWeatherPersonalityDto {
  const factory TestWeatherPersonalityDto({
    required AnswerChoice q1Answer,
    required AnswerChoice q2Answer,
    required AnswerChoice q3Answer,
    required AnswerChoice q4Answer,
    required AnswerChoice q5Answer,
    required AnswerChoice q6Answer,
    required AnswerChoice q7Answer,
    required AnswerChoice q8Answer,
    required AnswerChoice q9Answer,
    required AnswerChoice q10Answer,
    required AnswerChoice q11Answer,
    required AnswerChoice q12Answer,
    required AnswerChoice q13Answer,
    required AnswerChoice q14Answer,
    required AnswerChoice q15Answer,
    required AnswerChoice q16Answer,
  }) = _TestWeatherPersonalityDto;

  factory TestWeatherPersonalityDto.fromJson(Map<String, dynamic> json) =>
      _$TestWeatherPersonalityDtoFromJson(json);
}
