// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_report_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherReportSimpleDto _$WeatherReportSimpleDtoFromJson(
        Map<String, dynamic> json) =>
    _WeatherReportSimpleDto(
      id: json['id'] as String,
      userId: json['userId'] as String,
      comment: json['comment'] as String,
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['mediaType']),
      url: json['url'] as String,
      createdAt:
          const IsoDateTimeConverter().fromJson(json['createdAt'] as String),
    );

Map<String, dynamic> _$WeatherReportSimpleDtoToJson(
        _WeatherReportSimpleDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'comment': instance.comment,
      'mediaType': _$MediaTypeEnumMap[instance.mediaType]!,
      'url': instance.url,
      'createdAt': const IsoDateTimeConverter().toJson(instance.createdAt),
    };

const _$MediaTypeEnumMap = {
  MediaType.image: 'IMAGE',
  MediaType.video: 'VIDEO',
};
