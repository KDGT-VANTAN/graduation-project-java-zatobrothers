import 'package:reimi_app/data/dtos/post_weather_report_dto.dart';
import 'package:reimi_app/domain/params/post_weather_report_params.dart';

extension PostWeatherReportDtoMapper on PostWeatherReportParams {
  PostWeatherReportDto toDto() {
    return PostWeatherReportDto(
      comment: comment,
      weatherType: weatherType,
      feelingType: feelingType,
      forecastType: forecastType,
      mediaType: mediaType,
      url: url,
      latitude: latitude,
      longitude: longitude,
    );
  }
}
