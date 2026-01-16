import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/presentation/features/account/states/account_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_notifier.g.dart';

@riverpod
class AccountNotifier extends _$AccountNotifier {
  @override
  AccountState build() {
    return const AccountState();
  }

  Future<void> init() async {
    await loadUser();
  }

  Future<void> loadUser() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final user = await ref.read(getCurrentUserUseCaseProvider).call();
      state = state.copyWith(
        user: user,
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
    await loadUser();
  }
}
