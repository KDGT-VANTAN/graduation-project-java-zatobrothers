// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'axis_feature_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AxisFeatureDto _$AxisFeatureDtoFromJson(Map<String, dynamic> json) =>
    _AxisFeatureDto(
      axis: $enumDecode(_$WeatherPersonalityAxisEnumMap, json['axis']),
      polarity:
          $enumDecode(_$WeatherPersonalityPolarityEnumMap, json['polarity']),
      description: json['description'] as String,
    );

Map<String, dynamic> _$AxisFeatureDtoToJson(_AxisFeatureDto instance) =>
    <String, dynamic>{
      'axis': _$WeatherPersonalityAxisEnumMap[instance.axis]!,
      'polarity': _$WeatherPersonalityPolarityEnumMap[instance.polarity]!,
      'description': instance.description,
    };

const _$WeatherPersonalityAxisEnumMap = {
  WeatherPersonalityAxis.sensitivity: 'SENSITIVITY',
  WeatherPersonalityAxis.preparedness: 'PREPAREDNESS',
  WeatherPersonalityAxis.activity: 'ACTIVITY',
  WeatherPersonalityAxis.motivation: 'MOTIVATION',
};

const _$WeatherPersonalityPolarityEnumMap = {
  WeatherPersonalityPolarity.sensitive: 'SENSITIVE',
  WeatherPersonalityPolarity.neutral: 'NEUTRAL',
  WeatherPersonalityPolarity.planned: 'PLANNED',
  WeatherPersonalityPolarity.flexible: 'FLEXIBLE',
  WeatherPersonalityPolarity.outdoor: 'OUTDOOR',
  WeatherPersonalityPolarity.indoor: 'INDOOR',
  WeatherPersonalityPolarity.emotional: 'EMOTIONAL',
  WeatherPersonalityPolarity.rational: 'RATIONAL',
};
