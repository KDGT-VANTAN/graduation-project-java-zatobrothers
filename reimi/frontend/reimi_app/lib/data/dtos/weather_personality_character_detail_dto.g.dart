// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_personality_character_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherPersonalityCharacterDetailDto
    _$WeatherPersonalityCharacterDetailDtoFromJson(Map<String, dynamic> json) =>
        _WeatherPersonalityCharacterDetailDto(
          typeCode:
              $enumDecode(_$WeatherPersonalityCodeEnumMap, json['typeCode']),
          typeName: json['typeName'] as String,
          typeCatchphrase: json['typeCatchphrase'] as String,
          typeImageUrl: json['typeImageUrl'] as String,
          rulingStatement: json['rulingStatement'] as String,
          axisFeatures: (json['axisFeatures'] as List<dynamic>)
              .map((e) => AxisFeatureDto.fromJson(e as Map<String, dynamic>))
              .toList(),
          behaviorTendencies: (json['behaviorTendencies'] as List<dynamic>)
              .map((e) =>
                  BehaviorTendencyDto.fromJson(e as Map<String, dynamic>))
              .toList(),
          compatibleTypes: (json['compatibleTypes'] as List<dynamic>)
              .map((e) =>
                  TypeCompatibilityDto.fromJson(e as Map<String, dynamic>))
              .toList(),
          incompatibleTypes: (json['incompatibleTypes'] as List<dynamic>)
              .map((e) =>
                  TypeCompatibilityDto.fromJson(e as Map<String, dynamic>))
              .toList(),
          godsMessage: json['godsMessage'] as String,
        );

Map<String, dynamic> _$WeatherPersonalityCharacterDetailDtoToJson(
        _WeatherPersonalityCharacterDetailDto instance) =>
    <String, dynamic>{
      'typeCode': _$WeatherPersonalityCodeEnumMap[instance.typeCode]!,
      'typeName': instance.typeName,
      'typeCatchphrase': instance.typeCatchphrase,
      'typeImageUrl': instance.typeImageUrl,
      'rulingStatement': instance.rulingStatement,
      'axisFeatures': instance.axisFeatures,
      'behaviorTendencies': instance.behaviorTendencies,
      'compatibleTypes': instance.compatibleTypes,
      'incompatibleTypes': instance.incompatibleTypes,
      'godsMessage': instance.godsMessage,
    };

const _$WeatherPersonalityCodeEnumMap = {
  WeatherPersonalityCode.spoe: 'SPOE',
  WeatherPersonalityCode.spor: 'SPOR',
  WeatherPersonalityCode.spie: 'SPIE',
  WeatherPersonalityCode.spir: 'SPIR',
  WeatherPersonalityCode.sfoe: 'SFOE',
  WeatherPersonalityCode.sfor: 'SFOR',
  WeatherPersonalityCode.sfie: 'SFIE',
  WeatherPersonalityCode.sfir: 'SFIR',
  WeatherPersonalityCode.npoe: 'NPOE',
  WeatherPersonalityCode.npor: 'NPOR',
  WeatherPersonalityCode.npie: 'NPIE',
  WeatherPersonalityCode.npir: 'NPIR',
  WeatherPersonalityCode.nfoe: 'NFOE',
  WeatherPersonalityCode.nfor: 'NFOR',
  WeatherPersonalityCode.nfie: 'NFIE',
  WeatherPersonalityCode.nfir: 'NFIR',
};
