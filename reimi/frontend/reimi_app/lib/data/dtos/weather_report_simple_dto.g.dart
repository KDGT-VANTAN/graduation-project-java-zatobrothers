// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_report_simple_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherReportSimpleDto _$WeatherReportSimpleDtoFromJson(
        Map<String, dynamic> json) =>
    _WeatherReportSimpleDto(
      reportId: json['reportId'] as String,
      userId: json['userId'] as String,
      comment: json['comment'] as String,
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['mediaType']),
      url: json['url'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$WeatherReportSimpleDtoToJson(
        _WeatherReportSimpleDto instance) =>
    <String, dynamic>{
      'reportId': instance.reportId,
      'userId': instance.userId,
      'comment': instance.comment,
      'mediaType': _$MediaTypeEnumMap[instance.mediaType]!,
      'url': instance.url,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$MediaTypeEnumMap = {
  MediaType.image: 'IMAGE',
  MediaType.video: 'VIDEO',
};
