// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_report_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherReportDetailDto _$WeatherReportDetailDtoFromJson(
        Map<String, dynamic> json) =>
    _WeatherReportDetailDto(
      id: json['id'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      mainPhotoUrl: json['mainPhotoUrl'] as String,
      comment: json['comment'] as String,
      weatherType: $enumDecode(_$WeatherTypeEnumMap, json['weatherType']),
      feelingType: $enumDecode(_$FeelingTypeEnumMap, json['feelingType']),
      forecastType: $enumDecode(_$ForecastTypeEnumMap, json['forecastType']),
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['mediaType']),
      url: json['url'] as String,
      createdAt:
          const IsoDateTimeConverter().fromJson(json['createdAt'] as String),
      reportComment: (json['reportComment'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      likeCount: (json['likeCount'] as num?)?.toInt(),
      commentCount: (json['commentCount'] as num?)?.toInt(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WeatherReportDetailDtoToJson(
        _WeatherReportDetailDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userName': instance.userName,
      'mainPhotoUrl': instance.mainPhotoUrl,
      'comment': instance.comment,
      'weatherType': _$WeatherTypeEnumMap[instance.weatherType]!,
      'feelingType': _$FeelingTypeEnumMap[instance.feelingType]!,
      'forecastType': _$ForecastTypeEnumMap[instance.forecastType]!,
      'mediaType': _$MediaTypeEnumMap[instance.mediaType]!,
      'url': instance.url,
      'createdAt': const IsoDateTimeConverter().toJson(instance.createdAt),
      'reportComment': instance.reportComment,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

const _$WeatherTypeEnumMap = {
  WeatherType.clearStars: 'CLEAR_STARS',
  WeatherType.faintStars: 'FAINT_STARS',
  WeatherType.noStars: 'NO_STARS',
  WeatherType.drizzle: 'DRIZZLE',
  WeatherType.lightRain: 'LIGHT_RAIN',
  WeatherType.rain: 'RAIN',
  WeatherType.heavyRain: 'HEAVY_RAIN',
};

const _$FeelingTypeEnumMap = {
  FeelingType.veryCold: 'VERY_COLD',
  FeelingType.cold: 'COLD',
  FeelingType.comfortable: 'COMFORTABLE',
  FeelingType.warm: 'WARM',
  FeelingType.notApplicable: 'NOT_APPLICABLE',
};

const _$ForecastTypeEnumMap = {
  ForecastType.noChange: 'NO_CHANGE',
  ForecastType.improving: 'IMPROVING',
  ForecastType.deteriorating: 'DETERIORATING',
};

const _$MediaTypeEnumMap = {
  MediaType.image: 'IMAGE',
  MediaType.video: 'VIDEO',
};
