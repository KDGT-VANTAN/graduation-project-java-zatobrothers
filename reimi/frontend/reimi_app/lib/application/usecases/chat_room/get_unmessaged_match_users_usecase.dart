import 'package:reimi_app/domain/read_models/unmessaged_match_user_read_model.dart';
import 'package:reimi_app/domain/repositories/chat_room_repository.dart';

class GetUnmessagedMatchUsersUseCase {
  const GetUnmessagedMatchUsersUseCase(this._repository);
  final ChatRoomRepository _repository;

  Future<List<UnmessagedMatchUserReadModel>> call() {
    return _repository.fetchUnmessagedMatchUsers();
  }
}
