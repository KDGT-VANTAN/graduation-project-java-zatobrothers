// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_media_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherMediaEntity _$WeatherMediaEntityFromJson(Map<String, dynamic> json) =>
    _WeatherMediaEntity(
      id: json['id'] as String,
      weatherReportId: json['weatherReportId'] as String,
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['mediaType']),
      url: json['url'] as String,
      createdAt:
          const IsoDateTimeConverter().fromJson(json['createdAt'] as String),
    );

Map<String, dynamic> _$WeatherMediaEntityToJson(_WeatherMediaEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weatherReportId': instance.weatherReportId,
      'mediaType': _$MediaTypeEnumMap[instance.mediaType]!,
      'url': instance.url,
      'createdAt': const IsoDateTimeConverter().toJson(instance.createdAt),
    };

const _$MediaTypeEnumMap = {
  MediaType.photo: 'PHOTO',
  MediaType.video: 'VIDEO',
};
