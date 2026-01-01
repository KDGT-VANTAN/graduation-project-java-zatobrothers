// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherReportModel _$WeatherReportModelFromJson(Map<String, dynamic> json) =>
    _WeatherReportModel(
      reportId: json['report_id'] as String,
      userId: json['user_id'] as String,
      userName: json['user_name'] as String,
      mainPhotoUrl: json['main_photo_url'] as String,
      comment: json['comment'] as String,
      weatherType: $enumDecode(_$WeatherTypeEnumMap, json['weather_type']),
      feelingType: $enumDecode(_$FeelingTypeEnumMap, json['feeling_type']),
      forecastType: $enumDecode(_$ForecastTypeEnumMap, json['forecast_type']),
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['media_type']),
      url: json['url'] as String,
      reportComment: (json['report_comment'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      likeCount: (json['like_count'] as num).toInt(),
      commentCount: (json['comment_count'] as num).toInt(),
      postAt: DateTime.parse(json['post_at'] as String),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WeatherReportModelToJson(_WeatherReportModel instance) =>
    <String, dynamic>{
      'report_id': instance.reportId,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'main_photo_url': instance.mainPhotoUrl,
      'comment': instance.comment,
      'weather_type': _$WeatherTypeEnumMap[instance.weatherType]!,
      'feeling_type': _$FeelingTypeEnumMap[instance.feelingType]!,
      'forecast_type': _$ForecastTypeEnumMap[instance.forecastType]!,
      'media_type': _$MediaTypeEnumMap[instance.mediaType]!,
      'url': instance.url,
      'report_comment': instance.reportComment,
      'like_count': instance.likeCount,
      'comment_count': instance.commentCount,
      'post_at': instance.postAt.toIso8601String(),
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

const _$WeatherTypeEnumMap = {
  WeatherType.clearStar: 'CLEAR_STAR',
  WeatherType.faintStar: 'FAINT_STAR',
  WeatherType.noStar: 'NO_STAR',
  WeatherType.drizzle: 'DRIZZLE',
  WeatherType.lightRain: 'LIGHT_RAIN',
  WeatherType.rain: 'RAIN',
  WeatherType.heavyRain: 'HEAVY_RAIN',
};

const _$FeelingTypeEnumMap = {
  FeelingType.freezing: 'FREEZING',
  FeelingType.cold: 'COLD',
  FeelingType.comfortable: 'COMFORTABLE',
  FeelingType.warm: 'WARM',
  FeelingType.notApplicable: 'NOT_APPLICABLE',
};

const _$ForecastTypeEnumMap = {
  ForecastType.noChange: 'NO_CHANGE',
  ForecastType.improving: 'IMPROVING',
  ForecastType.worsening: 'WORSENING',
};

const _$MediaTypeEnumMap = {
  MediaType.photo: 'PHOTO',
  MediaType.video: 'VIDEO',
};
