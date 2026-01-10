import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/feeling_type.dart';
import 'package:reimi_app/domain/value_objects/forecast_type.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';
import 'package:reimi_app/domain/value_objects/weather_type.dart';

part 'post_weather_report_dto.freezed.dart';
part 'post_weather_report_dto.g.dart';

@freezed
abstract class PostWeatherReportDto with _$PostWeatherReportDto {
  const factory PostWeatherReportDto({
    required String comment,
    required WeatherType weatherType,
    required FeelingType feelingType,
    required ForecastType forecastType,
    required MediaType mediaType,
    required String url,
    double? latitude,
    double? longitude,
  }) = _PostWeatherReportDto;

  factory PostWeatherReportDto.fromJson(Map<String, dynamic> json) =>
      _$PostWeatherReportDtoFromJson(json);
}
