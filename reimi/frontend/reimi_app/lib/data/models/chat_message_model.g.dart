// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMessageModel _$ChatMessageModelFromJson(Map<String, dynamic> json) =>
    _ChatMessageModel(
      messageId: json['message_id'] as String,
      chatRoomId: json['chat_room_id'] as String,
      senderId: json['sender_id'] as String,
      content: json['content'] as String,
      messageType: $enumDecode(_$MessageTypeEnumMap, json['message_type']),
      sentAt: DateTime.parse(json['sent_at'] as String),
    );

Map<String, dynamic> _$ChatMessageModelToJson(_ChatMessageModel instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'chat_room_id': instance.chatRoomId,
      'sender_id': instance.senderId,
      'content': instance.content,
      'message_type': _$MessageTypeEnumMap[instance.messageType]!,
      'sent_at': instance.sentAt.toIso8601String(),
    };

const _$MessageTypeEnumMap = {
  MessageType.text: 'TEXT',
  MessageType.image: 'IMAGE',
  MessageType.stamp: 'STAMP',
  MessageType.file: 'FILE',
};
