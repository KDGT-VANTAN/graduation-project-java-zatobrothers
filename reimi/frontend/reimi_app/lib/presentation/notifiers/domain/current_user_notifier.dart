import 'package:reimi_app/core/di/domain_providers.dart';
import 'package:reimi_app/domain/entities/user_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_user_notifier.g.dart';

@riverpod
class CurrentUserNotifier extends _$CurrentUserNotifier {
  @override
  Future<UserEntity?> build() async {
    final user = await fetchCurrentUser();
    if (user != null) {
      return user;
    }
    return null;
  }

  Future<UserEntity?> fetchCurrentUser() async {
    final user = await ref.read(getCurrentUserUseCaseProvider).call();
    return user;
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => fetchCurrentUser());
  }
}
