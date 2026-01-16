import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/domain/params/test_weather_personality_params.dart';
import 'package:reimi_app/presentation/features/weather_personality/states/weather_personality_test_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_personality_test_notifier.g.dart';

@riverpod
class WeatherPersonalityTestNotifier extends _$WeatherPersonalityTestNotifier {
  @override
  WeatherPersonalityTestState build() {
    return const WeatherPersonalityTestState();
  }

  void nextPage() {
    if (state.currentPage < state.totalPages) {
      state = state.copyWith(currentPage: state.currentPage + 1);
    }
  }

  void previousPage() {
    if (state.currentPage > 1) {
      state = state.copyWith(currentPage: state.currentPage - 1);
    }
  }

  void updateQ1Answer(int q1Answer) {
    state = state.copyWith(q1Answer: q1Answer);
  }

  void updateQ2Answer(int q2Answer) {
    state = state.copyWith(q2Answer: q2Answer);
  }

  void updateQ3Answer(int q3Answer) {
    state = state.copyWith(q3Answer: q3Answer);
  }

  void updateQ4Answer(int q4Answer) {
    state = state.copyWith(q4Answer: q4Answer);
  }

  void updateQ5Answer(int q5Answer) {
    state = state.copyWith(q5Answer: q5Answer);
  }

  void updateQ6Answer(int q6Answer) {
    state = state.copyWith(q6Answer: q6Answer);
  }

  void updateQ7Answer(int q7Answer) {
    state = state.copyWith(q7Answer: q7Answer);
  }

  void updateQ8Answer(int q8Answer) {
    state = state.copyWith(q8Answer: q8Answer);
  }

  void updateQ9Answer(int q9Answer) {
    state = state.copyWith(q9Answer: q9Answer);
  }

  void updateQ10Answer(int q10Answer) {
    state = state.copyWith(q10Answer: q10Answer);
  }

  void updateQ11Answer(int q11Answer) {
    state = state.copyWith(q11Answer: q11Answer);
  }

  void updateQ12Answer(int q12Answer) {
    state = state.copyWith(q12Answer: q12Answer);
  }

  void updateQ13Answer(int q13Answer) {
    state = state.copyWith(q13Answer: q13Answer);
  }

  void updateQ14Answer(int q14Answer) {
    state = state.copyWith(q14Answer: q14Answer);
  }

  void updateQ15Answer(int q15Answer) {
    state = state.copyWith(q15Answer: q15Answer);
  }

  void updateQ16Answer(int q16Answer) {
    state = state.copyWith(q16Answer: q16Answer);
  }

  Future<void> interruptTest() async {
    ref.invalidateSelf();
  }

  Future<void> submit() async {
    final s = state;

    if (!s.canSubmit) {
      state = state.copyWith(
        status: WeatherPersonalityTestStatus.failure,
        errorMessage: '入力内容に不備があります',
      );
      return;
    }

    state = state.copyWith(
      status: WeatherPersonalityTestStatus.submitting,
      errorMessage: null,
    );

    try {
      final params = TestWeatherPersonalityParams(
        q1Answer: s.q1Answer!,
        q2Answer: s.q2Answer!,
        q3Answer: s.q3Answer!,
        q4Answer: s.q4Answer!,
        q5Answer: s.q5Answer!,
        q6Answer: s.q6Answer!,
        q7Answer: s.q7Answer!,
        q8Answer: s.q8Answer!,
        q9Answer: s.q9Answer!,
        q10Answer: s.q10Answer!,
        q11Answer: s.q11Answer!,
        q12Answer: s.q12Answer!,
        q13Answer: s.q13Answer!,
        q14Answer: s.q14Answer!,
        q15Answer: s.q15Answer!,
        q16Answer: s.q16Answer!,
      );

      await ref.read(testWeatherPersonalityUseCaseProvider).call(params);

      state = state.copyWith(
        status: WeatherPersonalityTestStatus.success,
      );
    } on ApiException catch (e) {
      state = state.copyWith(
        status: WeatherPersonalityTestStatus.failure,
        errorMessage: e.message,
      );
    } catch (_) {
      state = state.copyWith(
        status: WeatherPersonalityTestStatus.failure,
        errorMessage: '診断が失敗しました',
      );
    }
  }
}
