import 'package:reimi_app/core/di/domain_providers.dart';
import 'package:reimi_app/data/models/app_user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_user_notifier.g.dart';

@riverpod
class AppUserNotifier extends _$AppUserNotifier {
  @override
  Future<AppUserModel?> build() async {
    final user = await fetchAppUser();
    return user;
  }

  Future<AppUserModel?> fetchAppUser() async {
    final user = await ref.read(getCurrentUserUseCaseProvider).call();
    return user;
  }
}
