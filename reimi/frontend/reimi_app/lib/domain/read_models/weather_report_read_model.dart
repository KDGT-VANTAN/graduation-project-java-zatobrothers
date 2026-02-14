import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';

part 'weather_report_read_model.freezed.dart';

@freezed
abstract class WeatherReportReadModel
    with _$WeatherReportReadModel {
  const factory WeatherReportReadModel({
    required String id,
    required String userId,
    required String comment,
    required MediaType mediaType,
    required String url,
    @IsoDateTimeConverter() required DateTime createdAt,
  }) = _WeatherReportReadModel;
}
