import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/feeling_type.dart';
import 'package:reimi_app/domain/value_objects/forecast_type.dart';
import 'package:reimi_app/domain/value_objects/weather_type.dart';

part 'weather_report_entity.freezed.dart';

@freezed
abstract class WeatherReportEntity with _$WeatherReportEntity {
  const factory WeatherReportEntity({
    required String id,
    required String userId,
    required String comment,
    required WeatherType weather,
    required FeelingType feeling,
    required ForecastType forecast,
    required double latitude,
    required double longitude,
    required DateTime createdAt,
  }) = _WeatherReportEntity;
}
