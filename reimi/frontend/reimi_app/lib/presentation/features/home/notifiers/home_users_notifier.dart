import 'package:reimi_app/core/di/domain_providers.dart';
import 'package:reimi_app/data/models/home_user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_users_notifier.g.dart';

@riverpod
class HomeUsersNotifier extends _$HomeUsersNotifier {
  @override
  FutureOr<List<HomeUserModel>?> build() async {
    final users = await fetchHomeUsers();
    if (users != null) {
      return users;
    }
    return null;
  }

  Future<List<HomeUserModel>?> fetchHomeUsers() async {
    final users = await ref.read(getHomeUsersUseCaseProvider).call();
    return users;
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => fetchHomeUsers());
  }
}
