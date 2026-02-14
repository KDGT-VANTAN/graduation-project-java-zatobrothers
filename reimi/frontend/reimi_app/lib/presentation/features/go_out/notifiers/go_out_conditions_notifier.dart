import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/domain/params/setting_go_out_conditions_params.dart';
import 'package:reimi_app/presentation/features/go_out/states/go_out_conditions_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_out_conditions_notifier.g.dart';

@riverpod
class GoOutConditionsNotifier extends _$GoOutConditionsNotifier {
  @override
  GoOutConditionsState build() {
    return const GoOutConditionsState();
  }

  void updateGoOutDate(DateTime goOutDate) {
    _update((s) => s.copyWith(goOutDate: goOutDate));
  }

  void updateGoOutPlace(String goOutPlace) {
    _update((s) => s.copyWith(goOutPlace: goOutPlace));
  }

  Future<void> updateGoOutLocation(String goOutPlace) async {
    try {
      final location = await ref
          .read(getLocationFromAddressUseCaseProvider)
          .call(goOutPlace);
    } catch (e) {
      state = state.copyWith(
        status: GoOutConditionsStatus.failure,
        errorMessage: 'おでかけ場所の位置情報取得に失敗しました。',
      );
    }
  }

  void _update(GoOutConditionsState Function(GoOutConditionsState) updater) {
    final next = updater(state);
    state = next.isChanged ? next : next.copyWith(isChanged: true);
  }

  Future<void> discardChangesAndClose() async {
    ref.invalidateSelf();
  }

  Future<void> submit() async {
    final s = state;

    if (!s.canSubmit) {
      state = state.copyWith(
        status: GoOutConditionsStatus.failure,
        errorMessage: '入力内容に不備があります',
      );
      return;
    }

    await updateGoOutLocation(s.goOutPlace!);

    state = state.copyWith(
      status: GoOutConditionsStatus.submitting,
      errorMessage: null,
    );

    try {
      final params = SettingGoOutConditionsParams(
        goOutDate: s.goOutDate!,
        goOutPlace: s.goOutPlace!,
      );
      // await ref.read(ユースケース).call(params);

      state = state.copyWith(
        status: GoOutConditionsStatus.success,
        isChanged: false,
      );
    } on ApiException catch (e) {
      state = state.copyWith(
        status: GoOutConditionsStatus.failure,
        errorMessage: e.message,
      );
    } catch (_) {
      state = state.copyWith(
        status: GoOutConditionsStatus.failure,
        errorMessage: 'おでかけ条件設定に失敗しました',
      );
    }
  }
}
