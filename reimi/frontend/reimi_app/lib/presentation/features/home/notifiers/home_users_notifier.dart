import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/domain/read_models/home_user_read_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_users_notifier.g.dart';

@riverpod
class HomeUsersNotifier extends _$HomeUsersNotifier {
  @override
  FutureOr<List<HomeUserReadModel>> build() async {
    final users = await fetchHomeUsers();
    return users;
  }

  Future<List<HomeUserReadModel>> fetchHomeUsers() async {
    final users = await ref.read(getHomeUsersUseCaseProvider).call();
    return users;
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => fetchHomeUsers());
  }
}
