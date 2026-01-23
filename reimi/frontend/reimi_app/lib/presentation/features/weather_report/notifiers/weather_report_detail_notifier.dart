import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/domain/read_models/weather_report_read_model.dart';
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
      await isMyReport(weatherReport);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> isMyReport(WeatherReportReadModel? weatherReport) async {
    if (weatherReport == null) return;
    final user = await ref.read(getCurrentUserUseCaseProvider).call();
    final isMyReport = weatherReport.userId == user.id;
    state = state.copyWith(isMyReport: isMyReport);
  }

  Future<void> refresh(String reportId) async {
    await loadWeatherReport(reportId);
  }
}
