// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_personality_character_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherPersonalityCharacterDto _$WeatherPersonalityCharacterDtoFromJson(
        Map<String, dynamic> json) =>
    _WeatherPersonalityCharacterDto(
      typeCode: $enumDecode(_$WeatherPersonalityCodeEnumMap, json['typeCode']),
      typeName: json['typeName'] as String,
      typeCatchphrase: json['typeCatchphrase'] as String,
      typeImageUrl: json['typeImageUrl'] as String,
    );

Map<String, dynamic> _$WeatherPersonalityCharacterDtoToJson(
        _WeatherPersonalityCharacterDto instance) =>
    <String, dynamic>{
      'typeCode': _$WeatherPersonalityCodeEnumMap[instance.typeCode]!,
      'typeName': instance.typeName,
      'typeCatchphrase': instance.typeCatchphrase,
      'typeImageUrl': instance.typeImageUrl,
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
