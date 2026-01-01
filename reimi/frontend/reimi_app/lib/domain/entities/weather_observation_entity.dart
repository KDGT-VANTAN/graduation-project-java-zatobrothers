import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';
import 'package:reimi_app/domain/value_objects/wind_direction.dart';

part 'weather_observation_entity.freezed.dart';
part 'weather_observation_entity.g.dart';

@freezed
abstract class WeatherObservationEntity with _$WeatherObservationEntity {
  const factory WeatherObservationEntity({
    required String id,
    required String weatherReportId,
    double? temperature,
    double? humidity,
    double? pressure,
    double? windSpeed,
    WindDirection? windDir,
    @IsoDateTimeConverter() required DateTime createdAt,
  }) = _WeatherObservationEntity;

  factory WeatherObservationEntity.fromJson(Map<String, dynamic> json) =>
      _$WeatherObservationEntityFromJson(json);
}
