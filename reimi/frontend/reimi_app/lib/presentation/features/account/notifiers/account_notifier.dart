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
    await loadUserAccount();
  }

  Future<void> loadUserAccount() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final userAccount = await ref.read(getUserAccountUseCaseProvider).call();
      state = state.copyWith(
        userAccount: userAccount,
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
    await loadUserAccount();
  }
}
