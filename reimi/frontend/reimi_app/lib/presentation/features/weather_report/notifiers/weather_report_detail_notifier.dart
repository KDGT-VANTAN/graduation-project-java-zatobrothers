import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/domain/read_models/weather_report_read_model.dart';
import 'package:reimi_app/presentation/features/weather_report/states/weather_report_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_report_detail_notifier.g.dart';

@riverpod
class WeatherReportDetailNotifier extends _$WeatherReportDetailNotifier {
  @override
  Future<WeatherReportDetailState> build(String reportId) async {
    final weatherReport = await getWeatherReport(reportId);
    return WeatherReportDetailState(
      weatherReport: weatherReport,
    );
  }

  Future<WeatherReportReadModel?> getWeatherReport(String reportId) async {
    final weatherReport =
        await ref.read(getWeatherReportUseCaseProvider).call(reportId);
    return weatherReport;
  }
}
