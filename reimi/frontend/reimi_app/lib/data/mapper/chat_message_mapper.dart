import 'package:reimi_app/data/dtos/chat_message_dto.dart';
import 'package:reimi_app/domain/read_models/chat_message_read_model.dart';

extension ChatMessageDtoMapper on ChatMessageDto {
  ChatMessageReadModel toReadModel() {
    return ChatMessageReadModel(
      messageId: messageId,
      chatRoomId: chatRoomId,
      senderId: senderId,
      content: content,
      messageType: messageType,
      sentAt: sentAt,
    );
  }
}

extension ChatMessageDtoListMapper on List<ChatMessageDto> {
  List<ChatMessageReadModel> toReadModels() {
    return map((dto) => dto.toReadModel()).toList();
  }
}
