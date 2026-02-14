import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';

part 'weather_report_dto.freezed.dart';
part 'weather_report_dto.g.dart';

@freezed
abstract class WeatherReportDto with _$WeatherReportDto {
  const factory WeatherReportDto({
    required String id,
    required String userId,
    required String comment,
    required MediaType mediaType,
    required String url,
    @IsoDateTimeConverter() required DateTime createdAt,
  }) = _WeatherReportSimpleDto;

  factory WeatherReportDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherReportSimpleDtoFromJson(json);
}
