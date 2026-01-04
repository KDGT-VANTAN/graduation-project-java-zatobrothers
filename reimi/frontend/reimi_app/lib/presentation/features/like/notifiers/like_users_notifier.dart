import 'package:reimi_app/core/di/domain_providers.dart';
import 'package:reimi_app/data/models/like_user_model.dart';
import 'package:reimi_app/domain/value_objects/like_segment.dart';
import 'package:reimi_app/presentation/app/auth/notifiers/app_user_notifier.dart';
import 'package:reimi_app/presentation/features/like/notifiers/like_segment_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'like_users_notifier.g.dart';

@riverpod
class LikeUsersNotifier extends _$LikeUsersNotifier {
  @override
  Future<List<LikeUserModel>?> build() async {
    final segment = ref.watch(likeSegmentNotifierProvider);
    final appUser = ref.watch(appUserNotifierProvider).value;
    if (appUser == null) {
      return [];
    }
    final users = await fetchLikeUsers(segment: segment, userId: appUser.id);
    if (users == null) {
      return [];
    }
    return users;
  }

  Future<List<LikeUserModel>?> fetchLikeUsers({
    required LikeSegment segment,
    required String userId,
  }) async {
    switch (segment) {
      case LikeSegment.fromUser:
        final users =
            await ref.read(getLikeUsersFromUserUseCaseProvider).call(userId);
        return users;
      case LikeSegment.toUser:
        final users =
            await ref.read(getLikeUsersToUserUseCaseProvider).call(userId);
        return users;
    }
  }

  Future<void> refresh({
    required LikeSegment segment,
    required String userId,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => fetchLikeUsers(segment: segment, userId: userId),
    );
  }
}
