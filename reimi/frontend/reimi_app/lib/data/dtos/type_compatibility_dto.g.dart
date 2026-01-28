// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_compatibility_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TypeCompatibilityDto _$TypeCompatibilityDtoFromJson(
        Map<String, dynamic> json) =>
    _TypeCompatibilityDto(
      typeCode: json['typeCode'] as String,
      typeName: json['typeName'] as String,
      typeCharacterImageUrl: json['typeCharacterImageUrl'] as String,
      compatibilityPoint: json['compatibilityPoint'] as String,
    );

Map<String, dynamic> _$TypeCompatibilityDtoToJson(
        _TypeCompatibilityDto instance) =>
    <String, dynamic>{
      'typeCode': instance.typeCode,
      'typeName': instance.typeName,
      'typeCharacterImageUrl': instance.typeCharacterImageUrl,
      'compatibilityPoint': instance.compatibilityPoint,
    };
