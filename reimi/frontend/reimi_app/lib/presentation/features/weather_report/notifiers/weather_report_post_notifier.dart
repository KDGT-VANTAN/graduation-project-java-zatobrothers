import 'package:reimi_app/domain/value_objects/feeling_type.dart';
import 'package:reimi_app/domain/value_objects/forecast_type.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';
import 'package:reimi_app/domain/value_objects/weather_type.dart';
import 'package:reimi_app/presentation/features/weather_report/states/weather_report_post_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_report_post_notifier.g.dart';

@riverpod
class WeatherReportPostNotifier extends _$WeatherReportPostNotifier {
  @override
  WeatherReportPostState build() {
    return const WeatherReportPostState();
  }

  void updateComment(String comment) {
    _update((s) => s.copyWith(comment: comment));
  }

  void updateWeatherType(WeatherType weatherType) {
    _update((s) => s.copyWith(weatherType: weatherType));
  }

  void updateFeelingType(FeelingType feelingType) {
    _update((s) => s.copyWith(feelingType: feelingType));
  }

  void updateForecastType(ForecastType forecastType) {
    _update((s) => s.copyWith(forecastType: forecastType));
  }

  void updateMedia({
    required MediaType mediaType,
    required String url,
  }) {
    _update((s) => s.copyWith(mediaType: mediaType, url: url));
  }

  /// 共通更新処理
  void _update(
    WeatherReportPostState Function(WeatherReportPostState state) updater,
  ) {
    if (!state.isChanged) {
      state = state.copyWith(isChanged: true);
    }
    state = updater(state);
  }

  Future<void> discardChangesAndClose() async {
    ref.invalidateSelf();
  }

  Future<bool> submit() async {
    if (!state.canSubmit) return false;

    state = state.copyWith(isSubmitting: true);

    try {
      // TODO: API送信
      return true;
    } finally {
      state = state.copyWith(isSubmitting: false);
      ref.invalidateSelf();
    }
  }
}
