import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';
import 'package:reimi_app/domain/value_objects/feeling_type.dart';
import 'package:reimi_app/domain/value_objects/forecast_type.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';
import 'package:reimi_app/domain/value_objects/weather_type.dart';

part 'weather_report_detail_read_model.freezed.dart';

@freezed
abstract class WeatherReportDetailReadModel
    with _$WeatherReportDetailReadModel {
  const factory WeatherReportDetailReadModel({
    required String id,
    required String userId,
    required String userName,
    required String mainPhotoUrl,
    required String comment,
    required WeatherType weatherType,
    required FeelingType feelingType,
    required ForecastType forecastType,
    required MediaType mediaType,
    required String url,
    @IsoDateTimeConverter() required DateTime createdAt,
    List<String>? reportComment,
    int? likeCount,
    int? commentCount,
    double? latitude,
    double? longitude,
  }) = _WeatherReportDetailReadModel;
}
