import 'package:reimi_app/domain/read_models/chat_room_summary_read_model.dart';
import 'package:reimi_app/domain/repositories/chat_room_repository.dart';

class GetChatRoomSummariesUsecase {
  const GetChatRoomSummariesUsecase(this._repository);
  final ChatRoomRepository _repository;

  Future<List<ChatRoomSummaryReadModel>> call() {
    return _repository.fetchChatRoomSummaries();
  }
}
