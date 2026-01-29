import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';

part 'weather_report_simple_dto.freezed.dart';
part 'weather_report_simple_dto.g.dart';

@freezed
abstract class WeatherReportSimpleDto with _$WeatherReportSimpleDto {
  const factory WeatherReportSimpleDto({
    required String reportId,
    required String userId,
    required String comment,
    required MediaType mediaType,
    required String url,
    required DateTime createdAt,
  }) = _WeatherReportSimpleDto;

  factory WeatherReportSimpleDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherReportSimpleDtoFromJson(json);
}
