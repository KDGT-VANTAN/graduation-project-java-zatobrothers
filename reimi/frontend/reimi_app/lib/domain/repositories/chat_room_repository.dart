import 'package:reimi_app/domain/read_models/chat_room_summary_read_model.dart';
import 'package:reimi_app/domain/read_models/unmessaged_match_user_read_model.dart';

abstract class ChatRoomRepository {
  Future<List<UnmessagedMatchUserReadModel>> fetchUnmessagedMatchUsers();
  Future<List<ChatRoomSummaryReadModel>> fetchChatRoomSummaries();
}
