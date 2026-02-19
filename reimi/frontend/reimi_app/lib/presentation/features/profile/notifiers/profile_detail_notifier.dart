import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/presentation/features/profile/states/profile_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_detail_notifier.g.dart';

@riverpod
class ProfileDetailNotifier extends _$ProfileDetailNotifier {
  @override
  ProfileDetailState build() {
    return const ProfileDetailState();
  }

  Future<void> init(String? userId) async {
    await loadUserProfile(userId);
  }

  Future<void> loadUserProfile(String? userId) async {
    if (userId == null) return;
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

  void updateMessage(String message) {
    state = state.copyWith(message: message);
  }

  Future<void> onTapLikeButton(String userId) async {
    try {
      await ref.read(likeUserUseCaseProvider).call(userId);

      state = state.copyWith();
    } on ApiException catch (e) {
      state = state.copyWith(
        errorMessage: e.message,
      );
    } catch (_) {
      state = state.copyWith(
        errorMessage: 'いいねできませんでした。',
      );
    }
  }

  Future<void> onTapRainbowLikeButton(String userId) async {
    try {
      await ref.read(rainbowLikeUserUseCaseProvider).call(
            userId: userId,
            message: state.message,
          );

      state = state.copyWith();
    } on ApiException catch (e) {
      state = state.copyWith(
        errorMessage: e.message,
      );
    } catch (_) {
      state = state.copyWith(
        errorMessage: 'レインボーいいねできませんでした。',
      );
    }
  }

  Future<void> onTapSkippedButton() async {}

  Future<void> refresh(String? userId) async {
    if (userId == null) return;
    await loadUserProfile(userId);
  }
}
