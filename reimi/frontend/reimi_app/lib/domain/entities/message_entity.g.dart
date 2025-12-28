// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageEntity _$MessageEntityFromJson(Map<String, dynamic> json) =>
    _MessageEntity(
      id: json['id'] as String,
      chatRoomId: json['chat_room_id'] as String,
      senderId: json['sender_id'] as String,
      messageType: $enumDecode(_$MessageTypeEnumMap, json['message_type']),
      sentAt: const IsoDateTimeConverter().fromJson(json['sent_at'] as String),
    );

Map<String, dynamic> _$MessageEntityToJson(_MessageEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chat_room_id': instance.chatRoomId,
      'sender_id': instance.senderId,
      'message_type': _$MessageTypeEnumMap[instance.messageType]!,
      'sent_at': const IsoDateTimeConverter().toJson(instance.sentAt),
    };

const _$MessageTypeEnumMap = {
  MessageType.text: 'TEXT',
  MessageType.image: 'IMAGE',
  MessageType.stamp: 'STAMP',
  MessageType.file: 'FILE',
};
