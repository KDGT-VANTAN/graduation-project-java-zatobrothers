import 'package:reimi_app/data/dtos/chat_room_summary_dto.dart';
import 'package:reimi_app/domain/read_models/chat_room_summary_read_model.dart';

extension ChatRoomSummaryDtoMapper on ChatRoomSummaryDto {
  ChatRoomSummaryReadModel toReadModel() {
    return ChatRoomSummaryReadModel(
      chatRoomId: chatRoomId,
      userId: userId,
      name: name,
      birthDate: birthDate,
      address: address,
      mainPhotoUrl: mainPhotoUrl,
      lastMessageText: lastMessageText,
      lastSentAt: lastSentAt,
      unreadCount: unreadCount,
    );
  }
}

extension ChatRoomSummaryDtoListMapper on List<ChatRoomSummaryDto> {
  List<ChatRoomSummaryReadModel> toReadModels() {
    return map((dto) => dto.toReadModel()).toList();
  }
}
