// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMessageDto _$ChatMessageDtoFromJson(Map<String, dynamic> json) =>
    _ChatMessageDto(
      messageId: json['messageId'] as String,
      chatRoomId: json['chatRoomId'] as String,
      senderId: json['senderId'] as String,
      content: json['content'] as String,
      messageType: $enumDecode(_$MessageTypeEnumMap, json['messageType']),
      sentAt: DateTime.parse(json['sentAt'] as String),
    );

Map<String, dynamic> _$ChatMessageDtoToJson(_ChatMessageDto instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'chatRoomId': instance.chatRoomId,
      'senderId': instance.senderId,
      'content': instance.content,
      'messageType': _$MessageTypeEnumMap[instance.messageType]!,
      'sentAt': instance.sentAt.toIso8601String(),
    };

const _$MessageTypeEnumMap = {
  MessageType.text: 'TEXT',
  MessageType.image: 'IMAGE',
  MessageType.stamp: 'STAMP',
  MessageType.file: 'FILE',
};
