import 'package:reimi_app/data/datasources/remote/chat_room_remote_datasource.dart';
import 'package:reimi_app/data/mapper/chat_room_summary_mapper.dart';
import 'package:reimi_app/data/mapper/unmessaged_match_user_mapper.dart';
import 'package:reimi_app/domain/read_models/chat_room_summary_read_model.dart';
import 'package:reimi_app/domain/read_models/unmessaged_match_user_read_model.dart';
import 'package:reimi_app/domain/repositories/chat_room_repository.dart';

class ChatRoomRepositoryImpl implements ChatRoomRepository {
  const ChatRoomRepositoryImpl(this._remote);
  final ChatRoomRemoteDataSource _remote;

  @override
  Future<List<UnmessagedMatchUserReadModel>> fetchUnmessagedMatchUsers() async {
    final dtos = await _remote.fetchUnmessagedMatchUsers();
    return dtos.toReadModels();
  }

  @override
  Future<List<ChatRoomSummaryReadModel>> fetchChatRoomSummaries() async {
    final dtos = await _remote.fetchChatRoomSummaries();
    return dtos.toReadModels();
  }
}
