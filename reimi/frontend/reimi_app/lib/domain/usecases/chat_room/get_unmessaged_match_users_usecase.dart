import 'package:reimi_app/data/models/unmessaged_match_user_model.dart';
import 'package:reimi_app/domain/repositories/chat_room_repository.dart';

class GetUnmessagedMatchUsersUseCase {
  const GetUnmessagedMatchUsersUseCase(this._repository);
  final ChatRoomRepository _repository;

  Future<List<UnmessagedMatchUserModel>?> call(String userId) {
    return _repository.fetchUnmessagedMatchUsers(userId);
  }
}
