import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/presentation/features/weather_report/states/weather_report_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_report_detail_notifier.g.dart';

@riverpod
class WeatherReportDetailNotifier extends _$WeatherReportDetailNotifier {
  @override
  WeatherReportDetailState build() {
    return const WeatherReportDetailState();
  }

  Future<void> init(String reportId) async {
    await loadWeatherReport(reportId);
  }

  Future<void> loadWeatherReport(String reportId) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final weatherReport =
          await ref.read(getWeatherReportUseCaseProvider).call(reportId);
      state = state.copyWith(
        weatherReport: weatherReport,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> refresh(String reportId) async {
    await loadWeatherReport(reportId);
  }
}
