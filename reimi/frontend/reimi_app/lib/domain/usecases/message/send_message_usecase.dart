import 'package:reimi_app/domain/repositories/message_repository.dart';
import 'package:reimi_app/domain/value_objects/message_type.dart';

class SendMessageUseCase {
  const SendMessageUseCase(this._repository);
  final MessageRepository _repository;

  Future<void> call({
    required String chatRoomId,
    required String senderId,
    required MessageType messageType,
    required String content,
    required DateTime sentAt,
  }) {
    return _repository.sendMessage(
      chatRoomId: chatRoomId,
      senderId: senderId,
      messageType: messageType,
      content: content,
      sentAt: sentAt,
    );
  }
}
