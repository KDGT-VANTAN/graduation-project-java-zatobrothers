// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_observation_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherObservationEntity _$WeatherObservationEntityFromJson(
        Map<String, dynamic> json) =>
    _WeatherObservationEntity(
      id: json['id'] as String,
      weatherReportId: json['weatherReportId'] as String,
      temperature: (json['temperature'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      pressure: (json['pressure'] as num?)?.toDouble(),
      windSpeed: (json['windSpeed'] as num?)?.toDouble(),
      windDir: $enumDecodeNullable(_$WindDirectionEnumMap, json['windDir']),
      createdAt:
          const IsoDateTimeConverter().fromJson(json['createdAt'] as String),
    );

Map<String, dynamic> _$WeatherObservationEntityToJson(
        _WeatherObservationEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weatherReportId': instance.weatherReportId,
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'windSpeed': instance.windSpeed,
      'windDir': _$WindDirectionEnumMap[instance.windDir],
      'createdAt': const IsoDateTimeConverter().toJson(instance.createdAt),
    };

const _$WindDirectionEnumMap = {
  WindDirection.north: 'NORTH',
  WindDirection.northEast: 'NORTH_EAST',
  WindDirection.east: 'EAST',
  WindDirection.southEast: 'SOUTH_EAST',
  WindDirection.south: 'SOUTH',
  WindDirection.southWest: 'SOUTH_WEST',
  WindDirection.west: 'WEST',
  WindDirection.northWest: 'NORTH_WEST',
  WindDirection.unknown: 'UNKNOWN',
};
