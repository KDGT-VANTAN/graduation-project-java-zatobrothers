import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/data/dtos/type_compatibility_dto.dart';

part 'weather_personality_detail_dto.freezed.dart';
part 'weather_personality_detail_dto.g.dart';

@freezed
abstract class WeatherPersonalityDetailDto
    with _$WeatherPersonalityDetailDto {
  const factory WeatherPersonalityDetailDto({
    required String typeCode,
    required String typeName,
    required String typeCatchphrase,
    required String typeCharacterImageUrl,
    required String rulingStatement,
    required List<String> axisFeatures,
    required List<int> axisScore,
    required List<String> behaviorTendencyList,
    required List<TypeCompatibilityDto> compatibleTypes,
    required List<TypeCompatibilityDto> incompatibleTypes,
    required String godsMessage,
  }) = _WeatherPersonalityDetailDto;

  factory WeatherPersonalityDetailDto.fromJson(
          Map<String, dynamic> json) =>
      _$WeatherPersonalityDetailDtoFromJson(json);
}
