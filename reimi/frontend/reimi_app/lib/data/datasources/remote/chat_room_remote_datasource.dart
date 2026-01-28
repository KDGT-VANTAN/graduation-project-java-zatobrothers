import 'package:reimi_app/data/dtos/chat_room_summary_dto.dart';
import 'package:reimi_app/data/dtos/unmessaged_match_user_dto.dart';

abstract class ChatRoomRemoteDataSource {
  Future<List<UnmessagedMatchUserDto>> fetchUnmessagedMatchUsers();
  Future<List<ChatRoomSummaryDto>> fetchChatRoomSummaries();
}

class ChatRoomRemoteDataSourceImpl implements ChatRoomRemoteDataSource {
  const ChatRoomRemoteDataSourceImpl();

  @override
  Future<List<UnmessagedMatchUserDto>> fetchUnmessagedMatchUsers() {
    // TODO: implement fetchChatRooms
    throw UnimplementedError();
  }

  @override
  Future<List<ChatRoomSummaryDto>> fetchChatRoomSummaries() {
    // TODO: implement fetchChatRoomSummaries
    throw UnimplementedError();
  }
}
