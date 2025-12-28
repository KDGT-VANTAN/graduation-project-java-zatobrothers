import 'package:reimi_app/data/models/chat_room_summary_model.dart';
import 'package:reimi_app/data/models/unmessaged_match_user_model.dart';

abstract class ChatRoomRemoteDataSource {
  Future<List<UnmessagedMatchUserModel>?> fetchUnmessagedMatchUsers(
    String userId,
  );
  Future<List<ChatRoomSummaryModel>?> fetchChatRoomSummaries(String userId);
}

class ChatRoomRemoteDataSourceImpl implements ChatRoomRemoteDataSource {
  const ChatRoomRemoteDataSourceImpl();

  @override
  Future<List<UnmessagedMatchUserModel>> fetchUnmessagedMatchUsers(
    String userId,
  ) {
    // TODO: implement fetchChatRooms
    throw UnimplementedError();
  }

  @override
  Future<List<ChatRoomSummaryModel>?> fetchChatRoomSummaries(String userId) {
    // TODO: implement fetchChatRoomSummaries
    throw UnimplementedError();
  }
}
