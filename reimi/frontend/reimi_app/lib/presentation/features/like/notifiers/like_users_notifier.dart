import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/domain/read_models/like_user_read_model.dart';
import 'package:reimi_app/domain/value_objects/like_segment.dart';
import 'package:reimi_app/presentation/features/like/notifiers/like_segment_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'like_users_notifier.g.dart';

@riverpod
class LikeUsersNotifier extends _$LikeUsersNotifier {
  @override
  Future<List<LikeUserReadModel>> build() async {
    final segment = ref.watch(likeSegmentNotifierProvider);
    final users = await fetchLikeUsers(segment);
    return users;
  }

  Future<List<LikeUserReadModel>> fetchLikeUsers(LikeSegment segment) async {
    switch (segment) {
      case LikeSegment.fromUser:
        final users =
            await ref.read(getLikeUsersFromUserUseCaseProvider).call();
        return users;
      case LikeSegment.toUser:
        final users = await ref.read(getLikeUsersToUserUseCaseProvider).call();
        return users;
    }
  }

  Future<void> refresh(LikeSegment segment) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => fetchLikeUsers(segment));
  }
}
