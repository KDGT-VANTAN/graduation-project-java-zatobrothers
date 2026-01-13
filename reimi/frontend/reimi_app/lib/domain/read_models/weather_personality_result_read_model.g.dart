// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_personality_result_read_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherPersonalityResultReadModel _$WeatherPersonalityResultReadModelFromJson(
        Map<String, dynamic> json) =>
    _WeatherPersonalityResultReadModel(
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
      godsMessage: json['godsMessage'] as String,
    );

Map<String, dynamic> _$WeatherPersonalityResultReadModelToJson(
        _WeatherPersonalityResultReadModel instance) =>
    <String, dynamic>{
      'typeCode': instance.typeCode,
      'typeName': instance.typeName,
      'typeCatchphrase': instance.typeCatchphrase,
      'typeCharacterImageUrl': instance.typeCharacterImageUrl,
      'rulingStatement': instance.rulingStatement,
      'axisFeatures': instance.axisFeatures,
      'axisScore': instance.axisScore,
      'behaviorTendencyList': instance.behaviorTendencyList,
      'godsMessage': instance.godsMessage,
    };
