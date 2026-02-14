import 'package:reimi_app/data/dtos/weather_report_dto.dart';
import 'package:reimi_app/domain/read_models/weather_report_read_model.dart';

extension WeatherReportDtoMapper on WeatherReportDto {
  WeatherReportReadModel toReadModel() {
    return WeatherReportReadModel(
      id: id,
      userId: userId,
      comment: comment,
      mediaType: mediaType,
      url: url,
      createdAt: createdAt,
    );
  }
}

extension WeatherReportDtoListMapper on List<WeatherReportDto> {
  List<WeatherReportReadModel> toReadModels() {
    return map((dto) => dto.toReadModel()).toList();
  }
}
