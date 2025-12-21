import 'package:reimi_app/presentation/notifiers/domain/user_with_profile_notifier.dart';
import 'package:reimi_app/presentation/states/feature/profile_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_detail_notifier.g.dart';

@riverpod
class ProfileDetailNotifier extends _$ProfileDetailNotifier {
  @override
  ProfileDetailState build(String userId) {
    final userWithProfile =
        ref.watch(userWithProfileNotifierProvider(userId)).value;
    return ProfileDetailState(
      data: userWithProfile,
    );
  }

  Future<void> onTapLikeButton() async {}

  Future<void> onTapRainbowLikeButton() async {}

  Future<void> onTapSkippedButton() async {}
}
