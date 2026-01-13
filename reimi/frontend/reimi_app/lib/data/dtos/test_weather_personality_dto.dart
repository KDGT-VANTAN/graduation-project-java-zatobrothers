import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_weather_personality_dto.freezed.dart';
part 'test_weather_personality_dto.g.dart';

@freezed
abstract class TestWeatherPersonalityDto with _$TestWeatherPersonalityDto {
  const factory TestWeatherPersonalityDto({
    required int q1Answer,
    required int q2Answer,
    required int q3Answer,
    required int q4Answer,
    required int q5Answer,
    required int q6Answer,
    required int q7Answer,
    required int q8Answer,
    required int q9Answer,
    required int q10Answer,
    required int q11Answer,
    required int q12Answer,
    required int q13Answer,
    required int q14Answer,
    required int q15Answer,
    required int q16Answer,
  }) = _TestWeatherPersonalityDto;

  factory TestWeatherPersonalityDto.fromJson(Map<String, dynamic> json) =>
      _$TestWeatherPersonalityDtoFromJson(json);
}
