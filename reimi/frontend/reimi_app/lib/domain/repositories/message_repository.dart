import 'package:reimi_app/domain/params/send_message_params.dart';
import 'package:reimi_app/domain/read_models/chat_message_read_model.dart';

abstract class MessageRepository {
  Stream<List<ChatMessageReadModel>> watchMessages(String chatRoomId);
  Future<void> sendMessage(SendMessageParams params);
}
