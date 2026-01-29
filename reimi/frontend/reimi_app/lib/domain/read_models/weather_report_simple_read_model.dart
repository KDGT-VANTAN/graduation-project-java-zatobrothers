import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';

part 'weather_report_simple_read_model.freezed.dart';

@freezed
abstract class WeatherReportSimpleReadModel
    with _$WeatherReportSimpleReadModel {
  const factory WeatherReportSimpleReadModel({
    required String reportId,
    required String userId,
    required String comment,
    required MediaType mediaType,
    required String url,
    required DateTime createdAt,
  }) = _WeatherReportSimpleReadModel;
}
