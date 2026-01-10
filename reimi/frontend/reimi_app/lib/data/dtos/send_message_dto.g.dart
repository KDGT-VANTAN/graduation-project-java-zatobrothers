// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendMessageDto _$SendMessageDtoFromJson(Map<String, dynamic> json) =>
    _SendMessageDto(
      chatRoomId: json['chatRoomId'] as String,
      senderId: json['senderId'] as String,
      messageType: $enumDecode(_$MessageTypeEnumMap, json['messageType']),
      content: json['content'] as String,
      sentAt: const IsoDateTimeConverter().fromJson(json['sentAt'] as String),
    );

Map<String, dynamic> _$SendMessageDtoToJson(_SendMessageDto instance) =>
    <String, dynamic>{
      'chatRoomId': instance.chatRoomId,
      'senderId': instance.senderId,
      'messageType': _$MessageTypeEnumMap[instance.messageType]!,
      'content': instance.content,
      'sentAt': const IsoDateTimeConverter().toJson(instance.sentAt),
    };

const _$MessageTypeEnumMap = {
  MessageType.text: 'TEXT',
  MessageType.image: 'IMAGE',
  MessageType.stamp: 'STAMP',
  MessageType.file: 'FILE',
};
