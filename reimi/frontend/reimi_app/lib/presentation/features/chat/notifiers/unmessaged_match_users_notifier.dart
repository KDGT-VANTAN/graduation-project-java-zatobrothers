import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/domain/read_models/unmessaged_match_user_read_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'unmessaged_match_users_notifier.g.dart';

@riverpod
class UnmessagedMatchUsersNotifier extends _$UnmessagedMatchUsersNotifier {
  @override
  Future<List<UnmessagedMatchUserReadModel>> build() async {
    final users = await fetchUnmessagedMatchUsers();
    return users;
  }

  Future<List<UnmessagedMatchUserReadModel>> fetchUnmessagedMatchUsers() async {
    final users = await ref.read(getUnmessagedMatchUsersUseCaseProvider).call();
    return users;
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => fetchUnmessagedMatchUsers());
  }
}
