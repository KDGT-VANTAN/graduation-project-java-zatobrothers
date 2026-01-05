import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';

part 'weather_report_simple_model.freezed.dart';
part 'weather_report_simple_model.g.dart';

@freezed
abstract class WeatherReportSimpleModel with _$WeatherReportSimpleModel {
  const factory WeatherReportSimpleModel({
    required String reportId,
    required String userId,
    required String comment,
    required MediaType mediaType,
    required String url,
    required DateTime createdAt,
  }) = _WeatherReportSimpleModel;

  factory WeatherReportSimpleModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherReportSimpleModelFromJson(json);
}
