import 'package:reimi_app/core/di/domain_providers.dart';
import 'package:reimi_app/data/models/user_with_profile_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_with_profile_notifier.g.dart';

@riverpod
class UserWithProfileNotifier extends _$UserWithProfileNotifier {
  @override
  Future<UserWithProfileModel?> build(String userId) async {
    final profile = await ref.watch(getUserProfileUseCaseProvider).call(userId);
    return profile;
  }
}
