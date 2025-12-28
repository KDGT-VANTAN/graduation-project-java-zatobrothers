import 'package:reimi_app/data/models/chat_message_model.dart';
import 'package:reimi_app/domain/value_objects/message_type.dart';

abstract class MessageRepository {
  Stream<List<ChatMessageModel>> watchMessages(String chatRoomId);
  Future<void> sendMessage({
    required String chatRoomId,
    required String senderId,
    required MessageType messageType,
    required String content,
    required DateTime sentAt,
  });
}
