import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/domain/read_models/like_user_item.dart';
import 'package:reimi_app/presentation/features/like/enum/like_segment.dart';
import 'package:reimi_app/presentation/features/like/mapper/like_user_mapper.dart';
import 'package:reimi_app/presentation/features/like/mapper/rainbow_like_user_mapper.dart';
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
      final users = switch (segment) {
        LikeSegment.fromUser => await _loadFromUserLikeUsers(),
        LikeSegment.toUser => await _loadToUserLikeUsers(),
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

  Future<List<LikeUserItem>> _loadFromUserLikeUsers() async {
    final likeUsers =
        await ref.read(getLikeUsersFromUserUseCaseProvider).call();
    final rainbowLikeUsers =
        await ref.read(getRainbowLikeUsersFromUserUseCaseProvider).call();

    final normalLikes = likeUsers.map((e) => e.toLikeUserItem()).toList();
    final rainbowLikes =
        rainbowLikeUsers.map((e) => e.toLikeUserItem()).toList();

    final merged = <LikeUserItem>[
      ...rainbowLikes,
      ...normalLikes,
    ];
    return merged;
  }

  Future<List<LikeUserItem>> _loadToUserLikeUsers() async {
    final likeUsers = await ref.read(getLikeUsersToUserUseCaseProvider).call();
    final rainbowLikeUsers =
        await ref.read(getRainbowLikeUsersToUserUseCaseProvider).call();

    final normalLikes = likeUsers.map((e) => e.toLikeUserItem()).toList();
    final rainbowLikes =
        rainbowLikeUsers.map((e) => e.toLikeUserItem()).toList();

    final merged = <LikeUserItem>[
      ...rainbowLikes,
      ...normalLikes,
    ];
    return merged;
  }

  Future<void> refresh() async {
    await loadLikeUsers(state.segment);
  }
}
