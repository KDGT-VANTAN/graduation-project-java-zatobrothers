import 'package:reimi_app/data/datasources/chat_room_remote_datasource.dart';
import 'package:reimi_app/data/models/chat_room_summary_model.dart';
import 'package:reimi_app/data/models/unmessaged_match_user_model.dart';
import 'package:reimi_app/domain/repositories/chat_room_repository.dart';

class ChatRoomRepositoryImpl implements ChatRoomRepository {
  const ChatRoomRepositoryImpl(this._remote);
  final ChatRoomRemoteDataSource _remote;

  @override
  Future<List<UnmessagedMatchUserModel>?> fetchUnmessagedMatchUsers(
      String userId) {
    return _remote.fetchUnmessagedMatchUsers(userId);
  }

  @override
  Future<List<ChatRoomSummaryModel>?> fetchChatRoomSummaries(String userId) {
    return _remote.fetchChatRoomSummaries(userId);
  }
}
