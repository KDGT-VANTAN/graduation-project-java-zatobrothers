import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/feeling_type.dart';
import 'package:reimi_app/domain/value_objects/forecast_type.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';
import 'package:reimi_app/domain/value_objects/weather_type.dart';

part 'weather_report_post_model.freezed.dart';
part 'weather_report_post_model.g.dart';

@freezed
abstract class WeatherReportPostModel with _$WeatherReportPostModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory WeatherReportPostModel({
    String? reportId,
    String? userId,
    String? comment,
    WeatherType? weatherType,
    FeelingType? feelingType,
    ForecastType? forecastType,
    MediaType? mediaType,
    String? url,
    double? latitude,
    double? longitude,
  }) = _WeatherReportPostModel;

  factory WeatherReportPostModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherReportPostModelFromJson(json);
}
