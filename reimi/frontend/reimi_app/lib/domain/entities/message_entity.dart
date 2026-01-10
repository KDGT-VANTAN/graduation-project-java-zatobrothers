import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/message_type.dart';

part 'message_entity.freezed.dart';

@freezed
abstract class MessageEntity with _$MessageEntity {
  const factory MessageEntity({
    required String id,
    required String chatRoomId,
    required String senderId,
    required MessageType messageType,
    required DateTime sentAt,
  }) = _MessageEntity;
}
