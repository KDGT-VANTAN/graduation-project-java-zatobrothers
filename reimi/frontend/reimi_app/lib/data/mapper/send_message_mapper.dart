import 'package:reimi_app/data/dtos/send_message_dto.dart';
import 'package:reimi_app/domain/params/send_message_params.dart';

extension SendMessageDtoMapper on SendMessageParams {
  SendMessageDto toDto() {
    return SendMessageDto(
      chatRoomId: chatRoomId,
      senderId: senderId,
      messageType: messageType,
      content: content,
      sentAt: sentAt,
    );
  }
}
