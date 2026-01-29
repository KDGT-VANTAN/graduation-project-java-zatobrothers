import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/feeling_type.dart';
import 'package:reimi_app/domain/value_objects/forecast_type.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';
import 'package:reimi_app/domain/value_objects/weather_type.dart';

part 'weather_report_dto.freezed.dart';
part 'weather_report_dto.g.dart';

@freezed
abstract class WeatherReportDto with _$WeatherReportDto {
  const factory WeatherReportDto({
    required String reportId,
    required String userId,
    required String userName,
    required String mainPhotoUrl,
    required String comment,
    required WeatherType weatherType,
    required FeelingType feelingType,
    required ForecastType forecastType,
    required MediaType mediaType,
    required String url,
    required DateTime createdAt,
    List<String>? reportComment,
    int? likeCount,
    int? commentCount,
    double? latitude,
    double? longitude,
  }) = _WeatherReportDto;

  factory WeatherReportDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherReportDtoFromJson(json);
}
