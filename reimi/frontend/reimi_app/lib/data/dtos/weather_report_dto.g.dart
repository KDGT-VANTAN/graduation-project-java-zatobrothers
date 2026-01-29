// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_report_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherReportDto _$WeatherReportDtoFromJson(Map<String, dynamic> json) =>
    _WeatherReportDto(
      reportId: json['reportId'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      mainPhotoUrl: json['mainPhotoUrl'] as String,
      comment: json['comment'] as String,
      weatherType: $enumDecode(_$WeatherTypeEnumMap, json['weatherType']),
      feelingType: $enumDecode(_$FeelingTypeEnumMap, json['feelingType']),
      forecastType: $enumDecode(_$ForecastTypeEnumMap, json['forecastType']),
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['mediaType']),
      url: json['url'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      reportComment: (json['reportComment'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      likeCount: (json['likeCount'] as num?)?.toInt(),
      commentCount: (json['commentCount'] as num?)?.toInt(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WeatherReportDtoToJson(_WeatherReportDto instance) =>
    <String, dynamic>{
      'reportId': instance.reportId,
      'userId': instance.userId,
      'userName': instance.userName,
      'mainPhotoUrl': instance.mainPhotoUrl,
      'comment': instance.comment,
      'weatherType': _$WeatherTypeEnumMap[instance.weatherType]!,
      'feelingType': _$FeelingTypeEnumMap[instance.feelingType]!,
      'forecastType': _$ForecastTypeEnumMap[instance.forecastType]!,
      'mediaType': _$MediaTypeEnumMap[instance.mediaType]!,
      'url': instance.url,
      'createdAt': instance.createdAt.toIso8601String(),
      'reportComment': instance.reportComment,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
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
  MediaType.image: 'IMAGE',
  MediaType.video: 'VIDEO',
};
