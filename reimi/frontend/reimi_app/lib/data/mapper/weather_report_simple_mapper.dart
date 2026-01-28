import 'package:reimi_app/data/dtos/weather_report_simple_dto.dart';
import 'package:reimi_app/domain/read_models/weather_report_simple_read_model.dart';

extension WeatherReportSimpleDtoMapper on WeatherReportSimpleDto {
  WeatherReportSimpleReadModel toReadModel() {
    return WeatherReportSimpleReadModel(
      reportId: reportId,
      userId: userId,
      comment: comment,
      mediaType: mediaType,
      url: url,
      createdAt: createdAt,
    );
  }
}

extension WeatherReportSimpleDtoListMapper on List<WeatherReportSimpleDto> {
  List<WeatherReportSimpleReadModel> toReadModels() {
    return map((dto) => dto.toReadModel()).toList();
  }
}
