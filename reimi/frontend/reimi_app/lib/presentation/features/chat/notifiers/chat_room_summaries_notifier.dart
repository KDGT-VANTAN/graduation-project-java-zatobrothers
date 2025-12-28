import 'package:reimi_app/core/di/domain_providers.dart';
import 'package:reimi_app/data/models/chat_room_summary_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_room_summaries_notifier.g.dart';

@riverpod
class ChatRoomSummariesNotifier extends _$ChatRoomSummariesNotifier {
  @override
  Future<List<ChatRoomSummaryModel>?> build() async {
    final user = await ref.watch(getCurrentUserUseCaseProvider).call();
    if (user == null) {
      return null;
    }
    final users = await fetchChatRoomSummaries(user.id);
    return users;
  }

  Future<List<ChatRoomSummaryModel>?> fetchChatRoomSummaries(
      String userId) async {
    final users =
        await ref.read(getChatRoomSummariesUseCaseProvider).call(userId);
    return users;
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    final user = await ref.watch(getCurrentUserUseCaseProvider).call();
    if (user == null) {
      return;
    }
    state = await AsyncValue.guard(() => fetchChatRoomSummaries(user.id));
  }
}
