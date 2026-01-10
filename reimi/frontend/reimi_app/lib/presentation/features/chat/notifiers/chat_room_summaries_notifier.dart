import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/domain/read_models/chat_room_summary_read_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_room_summaries_notifier.g.dart';

@riverpod
class ChatRoomSummariesNotifier extends _$ChatRoomSummariesNotifier {
  @override
  Future<List<ChatRoomSummaryReadModel>> build() async {
    final users = await fetchChatRoomSummaries();
    return users;
  }

  Future<List<ChatRoomSummaryReadModel>> fetchChatRoomSummaries() async {
    final users = await ref.read(getChatRoomSummariesUseCaseProvider).call();
    return users;
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => fetchChatRoomSummaries());
  }
}
