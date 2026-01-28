// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_personality_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherPersonalityDetailDto _$WeatherPersonalityDetailDtoFromJson(
        Map<String, dynamic> json) =>
    _WeatherPersonalityDetailDto(
      typeCode: json['typeCode'] as String,
      typeName: json['typeName'] as String,
      typeCatchphrase: json['typeCatchphrase'] as String,
      typeCharacterImageUrl: json['typeCharacterImageUrl'] as String,
      rulingStatement: json['rulingStatement'] as String,
      axisFeatures: (json['axisFeatures'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      axisScore: (json['axisScore'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      behaviorTendencyList: (json['behaviorTendencyList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      compatibleTypes: (json['compatibleTypes'] as List<dynamic>)
          .map((e) =>
              TypeCompatibilityReadModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      incompatibleTypes: (json['incompatibleTypes'] as List<dynamic>)
          .map((e) =>
              TypeCompatibilityReadModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      godsMessage: json['godsMessage'] as String,
    );

Map<String, dynamic> _$WeatherPersonalityDetailDtoToJson(
        _WeatherPersonalityDetailDto instance) =>
    <String, dynamic>{
      'typeCode': instance.typeCode,
      'typeName': instance.typeName,
      'typeCatchphrase': instance.typeCatchphrase,
      'typeCharacterImageUrl': instance.typeCharacterImageUrl,
      'rulingStatement': instance.rulingStatement,
      'axisFeatures': instance.axisFeatures,
      'axisScore': instance.axisScore,
      'behaviorTendencyList': instance.behaviorTendencyList,
      'compatibleTypes': instance.compatibleTypes,
      'incompatibleTypes': instance.incompatibleTypes,
      'godsMessage': instance.godsMessage,
    };
