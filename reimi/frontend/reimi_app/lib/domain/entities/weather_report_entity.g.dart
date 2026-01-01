// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_report_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherReportEntity _$WeatherReportEntityFromJson(Map<String, dynamic> json) =>
    _WeatherReportEntity(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      comment: json['comment'] as String,
      weather: $enumDecode(_$WeatherTypeEnumMap, json['weather']),
      feeling: $enumDecode(_$FeelingTypeEnumMap, json['feeling']),
      forecast: $enumDecode(_$ForecastTypeEnumMap, json['forecast']),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      createdAt:
          const IsoDateTimeConverter().fromJson(json['created_at'] as String),
    );

Map<String, dynamic> _$WeatherReportEntityToJson(
        _WeatherReportEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'comment': instance.comment,
      'weather': _$WeatherTypeEnumMap[instance.weather]!,
      'feeling': _$FeelingTypeEnumMap[instance.feeling]!,
      'forecast': _$ForecastTypeEnumMap[instance.forecast]!,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'created_at': const IsoDateTimeConverter().toJson(instance.createdAt),
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
