import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/feeling_type.dart';
import 'package:reimi_app/domain/value_objects/forecast_type.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';
import 'package:reimi_app/domain/value_objects/weather_type.dart';

part 'weather_report_read_model.freezed.dart';

@freezed
abstract class WeatherReportReadModel with _$WeatherReportReadModel {
  const factory WeatherReportReadModel({
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
  }) = _WeatherReportReadModel;
}
