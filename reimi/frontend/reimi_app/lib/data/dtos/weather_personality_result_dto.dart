import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_personality_result_dto.freezed.dart';
part 'weather_personality_result_dto.g.dart';

@freezed
abstract class WeatherPersonalityResultDto
    with _$WeatherPersonalityResultDto {
  const factory WeatherPersonalityResultDto({
    required String typeCode,
    required String typeName,
    required String typeCatchphrase,
    required String typeCharacterImageUrl,
    required String rulingStatement,
    required List<String> axisFeatures,
    required List<int> axisScore,
    required List<String> behaviorTendencyList,
    required String godsMessage,
  }) = _WeatherPersonalityResultDto;

  factory WeatherPersonalityResultDto.fromJson(
          Map<String, dynamic> json) =>
      _$WeatherPersonalityResultDtoFromJson(json);
}
