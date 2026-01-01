import 'package:reimi_app/core/di/domain_providers.dart';
import 'package:reimi_app/data/models/weather_report_simple_model.dart';
import 'package:reimi_app/presentation/features/weather_report/states/weather_report_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_report_notifier.g.dart';

@riverpod
class WeatherReportNotifier extends _$WeatherReportNotifier {
  @override
  Future<WeatherReportState> build() async {
    final weatherReports = await getWeatherReports();
    return WeatherReportState(
      weatherReports: weatherReports ?? [],
    );
  }

  Future<List<WeatherReportSimpleModel>?> getWeatherReports() async {
    try {
      final weatherReports =
          await ref.read(getWeatherReportsUseCaseProvider).call();
      return weatherReports;
    } catch (e) {}
    return null;
  }
}
