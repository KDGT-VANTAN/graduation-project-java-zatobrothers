import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/data/dtos/axis_feature_dto.dart';
import 'package:reimi_app/data/dtos/behavior_tendency_dto.dart';
import 'package:reimi_app/data/dtos/type_compatibility_dto.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_axis.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_code.dart';

part 'weather_personality_detail_dto.freezed.dart';
part 'weather_personality_detail_dto.g.dart';

@freezed
abstract class WeatherPersonalityDetailDto with _$WeatherPersonalityDetailDto {
  const factory WeatherPersonalityDetailDto({
    required WeatherPersonalityCode typeCode,
    required String typeName,
    required String typeCatchphrase,
    required String typeImageUrl,
    required String rulingStatement,
    required List<AxisFeatureDto> axisFeatures,
    required Map<WeatherPersonalityAxis, int> userAxisScore,
    required List<BehaviorTendencyDto> behaviorTendencies,
    required List<TypeCompatibilityDto> compatibleTypes,
    required List<TypeCompatibilityDto> incompatibleTypes,
    required String godsMessage,
  }) = _WeatherPersonalityDetailDto;

  factory WeatherPersonalityDetailDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherPersonalityDetailDtoFromJson(json);
}
