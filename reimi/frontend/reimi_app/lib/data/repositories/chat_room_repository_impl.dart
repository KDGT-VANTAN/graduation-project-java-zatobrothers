import 'package:reimi_app/data/datasources/remote/chat_room_remote_datasource.dart';
import 'package:reimi_app/domain/read_models/chat_room_summary_read_model.dart';
import 'package:reimi_app/domain/read_models/unmessaged_match_user_read_model.dart';
import 'package:reimi_app/domain/repositories/chat_room_repository.dart';

class ChatRoomRepositoryImpl implements ChatRoomRepository {
  const ChatRoomRepositoryImpl(this._remote);
  final ChatRoomRemoteDataSource _remote;

  @override
  Future<List<UnmessagedMatchUserReadModel>> fetchUnmessagedMatchUsers() {
    return _remote.fetchUnmessagedMatchUsers();
  }

  @override
  Future<List<ChatRoomSummaryReadModel>> fetchChatRoomSummaries() {
    return _remote.fetchChatRoomSummaries();
  }
}
