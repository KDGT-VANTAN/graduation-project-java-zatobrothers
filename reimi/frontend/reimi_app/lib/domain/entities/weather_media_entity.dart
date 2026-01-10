import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';

part 'weather_media_entity.freezed.dart';

@freezed
abstract class WeatherMediaEntity with _$WeatherMediaEntity {
  const factory WeatherMediaEntity({
    required String id,
    required String weatherReportId,
    required MediaType mediaType,
    required String url,
    required DateTime createdAt,
  }) = _WeatherMediaEntity;
}
