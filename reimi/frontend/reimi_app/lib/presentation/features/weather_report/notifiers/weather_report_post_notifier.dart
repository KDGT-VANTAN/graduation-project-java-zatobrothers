import 'package:reimi_app/data/models/weather_report_post_model.dart';
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
    return const WeatherReportPostState(
      data: WeatherReportPostModel(),
    );
  }

  void updateComment(String comment) {
    _updateWeatherReportPost((data) => data.copyWith(comment: comment));
  }

  void updateWeatherType(WeatherType weatherType) {
    _updateWeatherReportPost((data) => data.copyWith(weatherType: weatherType));
  }

  void updateFeelingType(FeelingType feelingType) {
    _updateWeatherReportPost((data) => data.copyWith(feelingType: feelingType));
  }

  void updateForecastType(ForecastType forecastType) {
    _updateWeatherReportPost(
        (data) => data.copyWith(forecastType: forecastType));
  }

  void updateMedia({
    required MediaType mediaType,
    required String url,
  }) {
    _updateWeatherReportPost(
        (data) => data.copyWith(mediaType: mediaType, url: url));
  }

  void _updateWeatherReportPost(
    WeatherReportPostModel Function(WeatherReportPostModel data) updater,
  ) {
    final current = state.data;
    if (current == null) return;

    if (!state.isChanged) {
      state = state.copyWith(
        isChanged: true,
      );
    }

    if (current.comment?.isNotEmpty == true &&
        current.weatherType != null &&
        current.feelingType != null &&
        current.forecastType != null &&
        current.mediaType != null &&
        current.url?.isNotEmpty == true &&
        !state.isSubmitting) {
      state = state.copyWith(canSubmit: true);
    }

    state = state.copyWith(
      data: updater(current),
    );
  }

  Future<void> discardChangesAndClose() async {
    if (state.isChanged) {
      state = state.copyWith(
        data: const WeatherReportPostModel(),
        isChanged: false,
      );
    }
  }

  Future<void> submit() async {
    // 連続送信できないようにする
    state = state.copyWith(
      isSubmitting: true,
      isChanged: false,
    );
  }
}
