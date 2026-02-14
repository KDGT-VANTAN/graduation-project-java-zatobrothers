import 'package:reimi_app/data/dtos/weather_report_detail_dto.dart';
import 'package:reimi_app/domain/read_models/weather_report_detail_read_model.dart';

extension WeatherReportDetailDtoMapper on WeatherReportDetailDto {
  WeatherReportDetailReadModel toReadModel() {
    return WeatherReportDetailReadModel(
      id: id,
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
