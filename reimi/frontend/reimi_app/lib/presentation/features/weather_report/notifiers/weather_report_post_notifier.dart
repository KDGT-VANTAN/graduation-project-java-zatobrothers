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

    if (state.data!.comment?.isNotEmpty == true &&
        state.data!.weatherType != null &&
        state.data!.feelingType != null &&
        state.data!.forecastType != null &&
        state.data!.mediaType != null &&
        state.data!.url?.isNotEmpty == true &&
        !state.isSubmitting) {
      state = state.copyWith(canSubmit: true);
    }

    state = state.copyWith(
      data: updater(current),
    );
  }

  Future<void> submit() async {
    // 連続送信できないようにする
    state = state.copyWith(isSubmitting: true);
  }
}
