// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_compatibility_read_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TypeCompatibilityReadModel _$TypeCompatibilityReadModelFromJson(
        Map<String, dynamic> json) =>
    _TypeCompatibilityReadModel(
      typeCode: json['typeCode'] as String,
      typeName: json['typeName'] as String,
      typeCharacterImageUrl: json['typeCharacterImageUrl'] as String,
      compatibilityPoint: json['compatibilityPoint'] as String,
    );

Map<String, dynamic> _$TypeCompatibilityReadModelToJson(
        _TypeCompatibilityReadModel instance) =>
    <String, dynamic>{
      'typeCode': instance.typeCode,
      'typeName': instance.typeName,
      'typeCharacterImageUrl': instance.typeCharacterImageUrl,
      'compatibilityPoint': instance.compatibilityPoint,
    };
