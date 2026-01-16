import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/presentation/features/like/enum/like_segment.dart';
import 'package:reimi_app/presentation/features/like/states/like_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'like_notifier.g.dart';

@riverpod
class LikeNotifier extends _$LikeNotifier {
  @override
  LikeState build() {
    return const LikeState();
  }

  Future<void> init() async {
    await loadLikeUsers(state.segment);
  }

  Future<void> changeSegment(LikeSegment segment) async {
    if (state.segment == segment) return;

    state = state.copyWith(
      segment: segment,
      isLoading: true,
      users: [],
    );

    await loadLikeUsers(segment);
  }

  Future<void> loadLikeUsers(LikeSegment segment) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final users = await switch (segment) {
        LikeSegment.fromUser =>
          ref.read(getLikeUsersFromUserUseCaseProvider).call(),
        LikeSegment.toUser =>
          ref.read(getLikeUsersToUserUseCaseProvider).call(),
      };
      state = state.copyWith(
        users: users,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> refresh() async {
    await loadLikeUsers(state.segment);
  }
}
