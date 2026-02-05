import 'package:reimi_app/domain/read_models/matching_users_read_model.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/presentation/features/matching/states/matching_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'matching_notifier.g.dart';

@riverpod
class MatchingNotifier extends _$MatchingNotifier {
  @override
  MatchingState build() {
    return const MatchingState();
  }

  Future<void> init() async {
    await loadMatchingUsers();
  }

  Future<void> loadMatchingUsers() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      state = state.copyWith(
        users: MatchingUsersReadModel(
          otherUserName: 'あおい',
          otherUserMainPhotoUrl: Assets.images.sample.user000SampleImage.path,
          currentUserMainPhotoUrl: Assets.images.sample.currentUserSampleImage.path,
        ),
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }
}
