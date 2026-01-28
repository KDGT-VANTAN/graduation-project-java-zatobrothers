import 'package:reimi_app/data/dtos/chat_message_dto.dart';
import 'package:reimi_app/data/dtos/send_message_dto.dart';

abstract class MessageRemoteDataSource {
  Future<void> sendMessage(SendMessageDto dto);
  Stream<List<ChatMessageDto>> watchMessages(String chatRoomId);
}

class MessageRemoteDataSourceImpl implements MessageRemoteDataSource {
  const MessageRemoteDataSourceImpl();

  @override
  Future<void> sendMessage(SendMessageDto dto) {
    // TODO: implement sendMessage
    throw UnimplementedError();
  }

  @override
  Stream<List<ChatMessageDto>> watchMessages(String chatRoomId) {
    // TODO: implement watchMessages
    throw UnimplementedError();
  }
}
