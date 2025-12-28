import 'package:reimi_app/data/models/chat_room_summary_model.dart';
import 'package:reimi_app/data/models/unmessaged_match_user_model.dart';

abstract class ChatRoomRepository {
  Future<List<UnmessagedMatchUserModel>?> fetchUnmessagedMatchUsers(
    String userId,
  );
  Future<List<ChatRoomSummaryModel>?> fetchChatRoomSummaries(String userId);
}
