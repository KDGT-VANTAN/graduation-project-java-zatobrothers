import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/presentation/app/session/app_user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_user_state_notifier.g.dart';

@riverpod
class AppUserStateNotifier extends _$AppUserStateNotifier {
  @override
  Future<AppUserState> build() async {
    return await ref.read(getCurrentUserStateUseCaseProvider).call();
  }
}
