import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_axis.dart';
import 'package:reimi_app/domain/value_objects/weather_personality_polarity.dart';

part 'axis_feature_dto.freezed.dart';
part 'axis_feature_dto.g.dart';

@freezed
abstract class AxisFeatureDto with _$AxisFeatureDto {
  const factory AxisFeatureDto({
    required WeatherPersonalityAxis axis,
    required WeatherPersonalityPolarity polarity,
    required String description,
  }) = _AxisFeatureDto;

  factory AxisFeatureDto.fromJson(Map<String, dynamic> json) =>
      _$AxisFeatureDtoFromJson(json);
}
