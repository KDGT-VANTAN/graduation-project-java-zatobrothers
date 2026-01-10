import 'package:reimi_app/domain/read_models/chat_room_summary_read_model.dart';
import 'package:reimi_app/domain/read_models/unmessaged_match_user_read_model.dart';

abstract class ChatRoomRemoteDataSource {
  Future<List<UnmessagedMatchUserReadModel>> fetchUnmessagedMatchUsers();
  Future<List<ChatRoomSummaryReadModel>> fetchChatRoomSummaries();
}

class ChatRoomRemoteDataSourceImpl implements ChatRoomRemoteDataSource {
  const ChatRoomRemoteDataSourceImpl();

  @override
  Future<List<UnmessagedMatchUserReadModel>> fetchUnmessagedMatchUsers() {
    // TODO: implement fetchChatRooms
    throw UnimplementedError();
  }

  @override
  Future<List<ChatRoomSummaryReadModel>> fetchChatRoomSummaries() {
    // TODO: implement fetchChatRoomSummaries
    throw UnimplementedError();
  }
}
