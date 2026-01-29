import 'package:reimi_app/data/dtos/weather_report_dto.dart';
import 'package:reimi_app/domain/read_models/weather_report_read_model.dart';

extension WeatherReportDtoMapper on WeatherReportDto {
  WeatherReportReadModel toReadModel() {
    return WeatherReportReadModel(
      reportId: reportId,
      userId: userId,
      userName: userName,
      mainPhotoUrl: mainPhotoUrl,
      comment: comment,
      weatherType: weatherType,
      feelingType: feelingType,
      forecastType: forecastType,
      mediaType: mediaType,
      url: url,
      createdAt: createdAt,
      reportComment: reportComment,
      likeCount: likeCount,
      commentCount: commentCount,
      latitude: latitude,
      longitude: longitude,
    );
  }
}
