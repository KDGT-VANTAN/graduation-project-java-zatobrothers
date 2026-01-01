import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/feeling_type.dart';
import 'package:reimi_app/domain/value_objects/forecast_type.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';
import 'package:reimi_app/domain/value_objects/weather_type.dart';

part 'weather_report_model.freezed.dart';
part 'weather_report_model.g.dart';

@freezed
abstract class WeatherReportModel with _$WeatherReportModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory WeatherReportModel({
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
    required List<String> reportComment,
    required int likeCount,
    required int commentCount,
    required DateTime postAt,
    double? latitude,
    double? longitude,
  }) = _WeatherReportModel;

  factory WeatherReportModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherReportModelFromJson(json);
}
