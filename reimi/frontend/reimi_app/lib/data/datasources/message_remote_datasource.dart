import 'package:reimi_app/data/models/chat_message_model.dart';
import 'package:reimi_app/domain/value_objects/message_type.dart';

abstract class MessageRemoteDataSource {
  Future<void> sendMessage({
    required String chatRoomId,
    required String senderId,
    required MessageType messageType,
    required String content,
    required DateTime sentAt,
  });
  Stream<List<ChatMessageModel>> watchMessages(String chatRoomId);
}

class MessageRemoteDataSourceImpl implements MessageRemoteDataSource {
  const MessageRemoteDataSourceImpl();

  @override
  Future<void> sendMessage({
    required String chatRoomId,
    required String senderId,
    required MessageType messageType,
    required String content,
    required DateTime sentAt,
  }) {
    // TODO: implement sendMessage
    throw UnimplementedError();
  }

  @override
  Stream<List<ChatMessageModel>> watchMessages(String chatRoomId) {
    // TODO: implement watchMessages
    throw UnimplementedError();
  }
}
