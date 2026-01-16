import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/presentation/features/profile/states/profile_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_detail_notifier.g.dart';

@riverpod
class ProfileDetailNotifier extends _$ProfileDetailNotifier {
  @override
  ProfileDetailState build() {
    return const ProfileDetailState();
  }

  Future<void> init(String userId) async {
    await loadUserProfile(userId);
  }

  Future<void> loadUserProfile(String userId) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final profile =
          await ref.read(getUserProfileUseCaseProvider).call(userId);
      state = state.copyWith(
        profile: profile,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> onTapLikeButton() async {}

  Future<void> onTapRainbowLikeButton() async {}

  Future<void> onTapSkippedButton() async {}

  Future<void> refresh(String userId) async {
    await loadUserProfile(userId);
  }
}
