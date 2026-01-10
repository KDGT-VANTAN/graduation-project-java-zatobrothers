import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/domain/read_models/app_user_read_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_user_notifier.g.dart';

@riverpod
class AppUserNotifier extends _$AppUserNotifier {
  @override
  Future<AppUserReadModel> build() async {
    return await ref.read(getCurrentUserUseCaseProvider).call();
  }
}
