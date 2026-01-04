// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_report_simple_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherReportSimpleModel _$WeatherReportSimpleModelFromJson(
        Map<String, dynamic> json) =>
    _WeatherReportSimpleModel(
      reportId: json['report_id'] as String,
      userId: json['user_id'] as String,
      comment: json['comment'] as String,
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['media_type']),
      url: json['url'] as String,
      postAt: DateTime.parse(json['post_at'] as String),
    );

Map<String, dynamic> _$WeatherReportSimpleModelToJson(
        _WeatherReportSimpleModel instance) =>
    <String, dynamic>{
      'report_id': instance.reportId,
      'user_id': instance.userId,
      'comment': instance.comment,
      'media_type': _$MediaTypeEnumMap[instance.mediaType]!,
      'url': instance.url,
      'post_at': instance.postAt.toIso8601String(),
    };

const _$MediaTypeEnumMap = {
  MediaType.image: 'IMAGE',
  MediaType.video: 'VIDEO',
};
