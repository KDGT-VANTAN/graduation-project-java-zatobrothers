import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/wind_direction.dart';

part 'weather_observation_entity.freezed.dart';

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
    required DateTime createdAt,
  }) = _WeatherObservationEntity;
}
