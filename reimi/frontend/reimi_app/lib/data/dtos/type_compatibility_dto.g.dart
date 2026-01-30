// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_compatibility_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TypeCompatibilityDto _$TypeCompatibilityDtoFromJson(
        Map<String, dynamic> json) =>
    _TypeCompatibilityDto(
      typeCode: $enumDecode(_$WeatherPersonalityCodeEnumMap, json['typeCode']),
      typeName: json['typeName'] as String,
      typeImageUrl: json['typeImageUrl'] as String,
      compatibilityPoint: json['compatibilityPoint'] as String,
    );

Map<String, dynamic> _$TypeCompatibilityDtoToJson(
        _TypeCompatibilityDto instance) =>
    <String, dynamic>{
      'typeCode': _$WeatherPersonalityCodeEnumMap[instance.typeCode]!,
      'typeName': instance.typeName,
      'typeImageUrl': instance.typeImageUrl,
      'compatibilityPoint': instance.compatibilityPoint,
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
