import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/presentation/features/weather_report/states/weather_report_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_report_notifier.g.dart';

@riverpod
class WeatherReportNotifier extends _$WeatherReportNotifier {
  @override
  WeatherReportState build() {
    return const WeatherReportState();
  }

  Future<void> init() async {
    await loadWeatherReports();
  }

  Future<void> loadWeatherReports() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final weatherReports =
          await ref.read(getWeatherReportsUseCaseProvider).call();
      state = state.copyWith(
        weatherReports: weatherReports,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> refresh() async {
    await loadWeatherReports();
  }
}
