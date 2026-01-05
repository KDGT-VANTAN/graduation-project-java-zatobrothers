// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_report_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherReportPostModel _$WeatherReportPostModelFromJson(
        Map<String, dynamic> json) =>
    _WeatherReportPostModel(
      comment: json['comment'] as String?,
      weatherType:
          $enumDecodeNullable(_$WeatherTypeEnumMap, json['weatherType']),
      feelingType:
          $enumDecodeNullable(_$FeelingTypeEnumMap, json['feelingType']),
      forecastType:
          $enumDecodeNullable(_$ForecastTypeEnumMap, json['forecastType']),
      mediaType: $enumDecodeNullable(_$MediaTypeEnumMap, json['mediaType']),
      url: json['url'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WeatherReportPostModelToJson(
        _WeatherReportPostModel instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'weatherType': _$WeatherTypeEnumMap[instance.weatherType],
      'feelingType': _$FeelingTypeEnumMap[instance.feelingType],
      'forecastType': _$ForecastTypeEnumMap[instance.forecastType],
      'mediaType': _$MediaTypeEnumMap[instance.mediaType],
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
