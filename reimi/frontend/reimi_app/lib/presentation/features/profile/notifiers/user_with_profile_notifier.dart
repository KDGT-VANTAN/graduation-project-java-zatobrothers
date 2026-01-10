import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/domain/read_models/user_with_profile_read_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_with_profile_notifier.g.dart';

@riverpod
class UserWithProfileNotifier extends _$UserWithProfileNotifier {
  @override
  Future<UserWithProfileReadModel?> build(String userId) async {
    final userWithProfile = await ref.read(getUserProfileUseCaseProvider).call(userId);
    return userWithProfile;
  }
}
