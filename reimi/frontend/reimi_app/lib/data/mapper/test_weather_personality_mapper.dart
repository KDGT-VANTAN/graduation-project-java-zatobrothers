import 'package:reimi_app/data/dtos/test_weather_personality_dto.dart';
import 'package:reimi_app/domain/params/test_weather_personality_params.dart';

extension TestWeatherPersonalityDtoMapper on TestWeatherPersonalityParams {
  TestWeatherPersonalityDto toDto() {
    return TestWeatherPersonalityDto(
      q1Answer: q1Answer,
      q2Answer: q2Answer,
      q3Answer: q3Answer,
      q4Answer: q4Answer,
      q5Answer: q5Answer,
      q6Answer: q6Answer,
      q7Answer: q7Answer,
      q8Answer: q8Answer,
      q9Answer: q9Answer,
      q10Answer: q10Answer,
      q11Answer: q11Answer,
      q12Answer: q12Answer,
      q13Answer: q13Answer,
      q14Answer: q14Answer,
      q15Answer: q15Answer,
      q16Answer: q16Answer,
    );
  }
}
