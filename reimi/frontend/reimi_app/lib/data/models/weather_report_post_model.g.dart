// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_report_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherReportPostModel _$WeatherReportPostModelFromJson(
        Map<String, dynamic> json) =>
    _WeatherReportPostModel(
      reportId: json['report_id'] as String?,
      userId: json['user_id'] as String?,
      comment: json['comment'] as String?,
      weatherType:
          $enumDecodeNullable(_$WeatherTypeEnumMap, json['weather_type']),
      feelingType:
          $enumDecodeNullable(_$FeelingTypeEnumMap, json['feeling_type']),
      forecastType:
          $enumDecodeNullable(_$ForecastTypeEnumMap, json['forecast_type']),
      mediaType: $enumDecodeNullable(_$MediaTypeEnumMap, json['media_type']),
      url: json['url'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WeatherReportPostModelToJson(
        _WeatherReportPostModel instance) =>
    <String, dynamic>{
      'report_id': instance.reportId,
      'user_id': instance.userId,
      'comment': instance.comment,
      'weather_type': _$WeatherTypeEnumMap[instance.weatherType],
      'feeling_type': _$FeelingTypeEnumMap[instance.feelingType],
      'forecast_type': _$ForecastTypeEnumMap[instance.forecastType],
      'media_type': _$MediaTypeEnumMap[instance.mediaType],
      'url': instance.url,
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
