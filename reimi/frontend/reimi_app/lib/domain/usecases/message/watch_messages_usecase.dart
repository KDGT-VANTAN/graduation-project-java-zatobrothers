import 'package:reimi_app/data/models/chat_message_model.dart';
import 'package:reimi_app/domain/repositories/message_repository.dart';

class WatchMessagesUseCase {
  const WatchMessagesUseCase(this._repository);

  final MessageRepository _repository;

  Stream<List<ChatMessageModel>> call(String chatRoomId) {
    return _repository.watchMessages(chatRoomId);
  }
}
