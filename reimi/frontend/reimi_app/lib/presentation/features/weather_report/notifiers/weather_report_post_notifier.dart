import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/domain/params/post_weather_report_params.dart';
import 'package:reimi_app/domain/value_objects/feeling_type.dart';
import 'package:reimi_app/domain/value_objects/forecast_type.dart';
import 'package:reimi_app/domain/value_objects/location.dart';
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
    required String weatherPhoto,
  }) {
    _update((s) => s.copyWith(mediaType: mediaType, weatherPhoto: weatherPhoto));
  }

  Future<void> updatePrefectureCity(
    Location location,
  ) async {
    try {
      final prefectureCity = await ref
          .read(getCurrentPrefectureCityUseCaseProvider)
          .call(location);
      _update((s) => s.copyWith(prefectureCity: prefectureCity));
    } catch (e) {
      state = state.copyWith(
        status: WeatherReportPostStatus.failure,
        errorMessage: '現在地を表示できません。',
      );
    }
  }

  Future<void> updateLocation() async {
    try {
      final location = await ref.read(getCurrentLocationUseCaseProvider).call();
      _update((s) => s.copyWith(
            latitude: location.latitude,
            longitude: location.longitude,
          ));
      await updatePrefectureCity(location);
    } catch (e) {
      state = state.copyWith(
        status: WeatherReportPostStatus.failure,
        errorMessage: '現在地を取得できません。',
      );
    }
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

  Future<void> submit() async {
    final s = state;

    if (!s.canSubmit) {
      state = state.copyWith(
        status: WeatherReportPostStatus.failure,
        errorMessage: '入力内容に不備があります',
      );
      return;
    }

    state = state.copyWith(
      status: WeatherReportPostStatus.submitting,
      errorMessage: null,
    );

    try {
      final params = PostWeatherReportParams(
        comment: s.comment!,
        weatherType: s.weatherType!,
        feelingType: s.feelingType!,
        forecastType: s.forecastType!,
        mediaType: s.mediaType!,
        weatherPhoto: s.weatherPhoto!,
        latitude: s.latitude!,
        longitude: s.longitude!,
      );
      await ref.read(postWeatherReportUseCaseProvider).call(params);

      state = state.copyWith(
        status: WeatherReportPostStatus.success,
      );
    } on ApiException catch (e) {
      state = state.copyWith(
        status: WeatherReportPostStatus.failure,
        errorMessage: e.message,
      );
    } catch (_) {
      state = state.copyWith(
        status: WeatherReportPostStatus.failure,
        errorMessage: 'リポートに失敗しました',
      );
    }
  }
}
