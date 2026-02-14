// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_weather_report_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostWeatherReportDto _$PostWeatherReportDtoFromJson(
        Map<String, dynamic> json) =>
    _PostWeatherReportDto(
      comment: json['comment'] as String,
      weatherType: $enumDecode(_$WeatherTypeEnumMap, json['weatherType']),
      feelingType: $enumDecode(_$FeelingTypeEnumMap, json['feelingType']),
      forecastType: $enumDecode(_$ForecastTypeEnumMap, json['forecastType']),
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['mediaType']),
      weatherPhoto: json['weatherPhoto'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      temperature: (json['temperature'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      pressure: (json['pressure'] as num?)?.toDouble(),
      windSpeed: (json['windSpeed'] as num?)?.toDouble(),
      windDirection:
          $enumDecodeNullable(_$WindDirectionEnumMap, json['windDirection']),
    );

Map<String, dynamic> _$PostWeatherReportDtoToJson(
        _PostWeatherReportDto instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'weatherType': _$WeatherTypeEnumMap[instance.weatherType]!,
      'feelingType': _$FeelingTypeEnumMap[instance.feelingType]!,
      'forecastType': _$ForecastTypeEnumMap[instance.forecastType]!,
      'mediaType': _$MediaTypeEnumMap[instance.mediaType]!,
      'weatherPhoto': instance.weatherPhoto,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'windSpeed': instance.windSpeed,
      'windDirection': _$WindDirectionEnumMap[instance.windDirection],
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
