import 'package:dio/dio.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as p;
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
      weatherPhoto: weatherPhoto,
      latitude: latitude,
      longitude: longitude,
      temperature: temperature,
      humidity: humidity,
      pressure: pressure,
      windSpeed: windSpeed,
      windDirection: windDirection,
    );
  }
}

extension PostWeatherReportFormData on PostWeatherReportDto {
  Future<FormData> toFormData() async {
    final json = toJson();
    return FormData.fromMap({
      ...json,
      'weatherPhoto': await MultipartFile.fromFile(
        weatherPhoto,
        filename: p.basename(weatherPhoto),
      ),
    });
  }
}
