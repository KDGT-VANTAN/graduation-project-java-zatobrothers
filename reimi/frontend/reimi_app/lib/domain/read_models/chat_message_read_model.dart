import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/message_type.dart';

part 'chat_message_read_model.freezed.dart';

@freezed
abstract class ChatMessageReadModel with _$ChatMessageReadModel {
  const factory ChatMessageReadModel({
    required String messageId,
    required String chatRoomId,
    required String senderId,
    required String content,
    required MessageType messageType,
    required DateTime sentAt,
  }) = _ChatMessageReadModel;
}
