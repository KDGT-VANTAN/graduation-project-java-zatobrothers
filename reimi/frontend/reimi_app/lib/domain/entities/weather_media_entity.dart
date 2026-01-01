import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';

part 'weather_media_entity.freezed.dart';
part 'weather_media_entity.g.dart';

@freezed
abstract class WeatherMediaEntity with _$WeatherMediaEntity {
  const factory WeatherMediaEntity({
    required String id,
    required String weatherReportId,
    required MediaType mediaType,
    required String url,
    @IsoDateTimeConverter() required DateTime createdAt,
  }) = _WeatherMediaEntity;

  factory WeatherMediaEntity.fromJson(Map<String, dynamic> json) =>
      _$WeatherMediaEntityFromJson(json);
}
