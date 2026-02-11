// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserAccountDto _$UserAccountDtoFromJson(Map<String, dynamic> json) =>
    _UserAccountDto(
      id: json['id'] as String,
      name: json['name'] as String,
      mainPhotoUrl: json['mainPhotoUrl'] as String,
      typeCode: $enumDecodeNullable(
          _$WeatherPersonalityCodeEnumMap, json['typeCode']),
      typeName: json['typeName'] as String?,
      typeImageUrl: json['typeImageUrl'] as String?,
      items: (json['items'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$ItemTypeCodeEnumMap, k), (e as num).toInt()),
      ),
    );

Map<String, dynamic> _$UserAccountDtoToJson(_UserAccountDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mainPhotoUrl': instance.mainPhotoUrl,
      'typeCode': _$WeatherPersonalityCodeEnumMap[instance.typeCode],
      'typeName': instance.typeName,
      'typeImageUrl': instance.typeImageUrl,
      'items':
          instance.items.map((k, e) => MapEntry(_$ItemTypeCodeEnumMap[k]!, e)),
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

const _$ItemTypeCodeEnumMap = {
  ItemTypeCode.rainbowLike: 'RAINBOW_LIKE',
};
