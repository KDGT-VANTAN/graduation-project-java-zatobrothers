import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';
import 'package:reimi_app/domain/value_objects/feeling_type.dart';
import 'package:reimi_app/domain/value_objects/forecast_type.dart';
import 'package:reimi_app/domain/value_objects/weather_type.dart';

part 'weather_report_entity.freezed.dart';
part 'weather_report_entity.g.dart';

@freezed
abstract class WeatherReportEntity with _$WeatherReportEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory WeatherReportEntity({
    required String id,
    required String userId,
    required String comment,
    required WeatherType weather,
    required FeelingType feeling,
    required ForecastType forecast,
    required double latitude,
    required double longitude,
    @IsoDateTimeConverter() required DateTime createdAt,
  }) = _WeatherReportEntity;

  factory WeatherReportEntity.fromJson(Map<String, dynamic> json) =>
      _$WeatherReportEntityFromJson(json);
}
