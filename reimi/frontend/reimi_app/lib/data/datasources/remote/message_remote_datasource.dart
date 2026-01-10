import 'package:reimi_app/data/dtos/send_message_dto.dart';
import 'package:reimi_app/domain/read_models/chat_message_read_model.dart';

abstract class MessageRemoteDataSource {
  Future<void> sendMessage(SendMessageDto dto);
  Stream<List<ChatMessageReadModel>> watchMessages(String chatRoomId);
}

class MessageRemoteDataSourceImpl implements MessageRemoteDataSource {
  const MessageRemoteDataSourceImpl();

  @override
  Future<void> sendMessage(SendMessageDto dto) {
    // TODO: implement sendMessage
    throw UnimplementedError();
  }

  @override
  Stream<List<ChatMessageReadModel>> watchMessages(String chatRoomId) {
    // TODO: implement watchMessages
    throw UnimplementedError();
  }
}
