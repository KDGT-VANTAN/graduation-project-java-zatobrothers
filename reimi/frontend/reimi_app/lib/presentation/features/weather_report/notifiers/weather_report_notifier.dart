import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/domain/read_models/weather_report_simple_read_model.dart';
import 'package:reimi_app/presentation/features/weather_report/states/weather_report_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_report_notifier.g.dart';

@riverpod
class WeatherReportNotifier extends _$WeatherReportNotifier {
  @override
  Future<WeatherReportState> build() async {
    final weatherReports = await getWeatherReports();
    return WeatherReportState(
      weatherReports: weatherReports,
    );
  }

  Future<List<WeatherReportSimpleReadModel>> getWeatherReports() async {
    final weatherReports =
        await ref.read(getWeatherReportsUseCaseProvider).call();
    return weatherReports;
  }
}
