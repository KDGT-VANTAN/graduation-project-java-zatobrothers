import 'package:reimi_app/domain/params/post_weather_report_params.dart';
import 'package:reimi_app/domain/repositories/weather_report_repository.dart';

class PostWeatherReportUseCase {
  const PostWeatherReportUseCase(this._repository);

  final WeatherReportRepository _repository;

  Future<void> call(PostWeatherReportParams params) {
    return _repository.postWeatherReport(params);
  }
}
