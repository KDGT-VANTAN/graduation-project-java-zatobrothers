import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/data/dtos/axis_feature_dto.dart';
import 'package:reimi_app/data/dtos/behavior_tendency_dto.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_axis.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_code.dart';

part 'weather_personality_result_dto.freezed.dart';
part 'weather_personality_result_dto.g.dart';

@freezed
abstract class WeatherPersonalityResultDto with _$WeatherPersonalityResultDto {
  const factory WeatherPersonalityResultDto({
    required WeatherPersonalityCode typeCode,
    required String typeName,
    required String typeCatchphrase,
    required String typeImageUrl,
    required String rulingStatement,
    required List<AxisFeatureDto> axisFeatures,
    required Map<WeatherPersonalityAxis, int> userAxisScore,
    required List<BehaviorTendencyDto> behaviorTendencies,
    required String godsMessage,
  }) = _WeatherPersonalityResultDto;

  factory WeatherPersonalityResultDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherPersonalityResultDtoFromJson(json);
}
