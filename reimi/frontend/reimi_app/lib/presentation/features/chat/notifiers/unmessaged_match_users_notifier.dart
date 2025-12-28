import 'package:reimi_app/core/di/domain_providers.dart';
import 'package:reimi_app/data/models/unmessaged_match_user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'unmessaged_match_users_notifier.g.dart';

@riverpod
class UnmessagedMatchUsersNotifier extends _$UnmessagedMatchUsersNotifier {
  @override
  Future<List<UnmessagedMatchUserModel>?> build() async {
    final user = await ref.watch(getCurrentUserUseCaseProvider).call();
    if (user == null) {
      return null;
    }
    final users = await fetchUnmessagedMatchUsers(user.id);
    return users;
  }

  Future<List<UnmessagedMatchUserModel>?> fetchUnmessagedMatchUsers(
      String userId) async {
    final users =
        await ref.read(getUnmessagedMatchUsersUseCaseProvider).call(userId);
    return users;
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    final user = await ref.watch(getCurrentUserUseCaseProvider).call();
    if (user == null) {
      return;
    }
    state = await AsyncValue.guard(() => fetchUnmessagedMatchUsers(user.id));
  }
}
