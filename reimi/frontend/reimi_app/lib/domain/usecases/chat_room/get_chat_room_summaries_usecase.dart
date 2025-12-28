import 'package:reimi_app/data/models/chat_room_summary_model.dart';
import 'package:reimi_app/domain/repositories/chat_room_repository.dart';

class GetChatRoomSummariesUsecase {
  const GetChatRoomSummariesUsecase(this._repository);
  final ChatRoomRepository _repository;

  Future<List<ChatRoomSummaryModel>?> call(String userId) {
    return _repository.fetchChatRoomSummaries(userId);
  }
}
