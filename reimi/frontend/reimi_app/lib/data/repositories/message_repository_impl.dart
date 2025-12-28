import 'package:reimi_app/data/datasources/message_remote_datasource.dart';
import 'package:reimi_app/data/models/chat_message_model.dart';
import 'package:reimi_app/domain/repositories/message_repository.dart';
import 'package:reimi_app/domain/value_objects/message_type.dart';

class MessageRepositoryImpl implements MessageRepository {
  const MessageRepositoryImpl(this._remote);
  final MessageRemoteDataSource _remote;

  @override
  Future<void> sendMessage({
    required String chatRoomId,
    required String senderId,
    required MessageType messageType,
    required String content,
    required DateTime sentAt,
  }) {
    return _remote.sendMessage(
      chatRoomId: chatRoomId,
      senderId: senderId,
      messageType: messageType,
      content: content,
      sentAt: sentAt,
    );
  }

  @override
  Stream<List<ChatMessageModel>> watchMessages(String chatRoomId) {
    return _remote.watchMessages(chatRoomId);
  }
}
