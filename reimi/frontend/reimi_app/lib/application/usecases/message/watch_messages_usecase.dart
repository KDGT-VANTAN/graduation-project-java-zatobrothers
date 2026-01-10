import 'package:reimi_app/domain/read_models/chat_message_read_model.dart';
import 'package:reimi_app/domain/repositories/message_repository.dart';

class WatchMessagesUseCase {
  const WatchMessagesUseCase(this._repository);

  final MessageRepository _repository;

  Stream<List<ChatMessageReadModel>> call(String chatRoomId) {
    return _repository.watchMessages(chatRoomId);
  }
}
