// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatRoomSummaryModel _$ChatRoomSummaryModelFromJson(
        Map<String, dynamic> json) =>
    _ChatRoomSummaryModel(
      chatRoomId: json['chat_room_id'] as String,
      matchId: json['match_id'] as String,
      userId: json['user_id'] as String,
      name: json['name'] as String,
      birthDate: DateTime.parse(json['birth_date'] as String),
      address: $enumDecode(_$AddressEnumMap, json['address']),
      mainPhotoUrl: json['main_photo_url'] as String,
      lastMessageId: json['last_message_id'] as String,
      lastMessageText: json['last_message_text'] as String,
      lastMessageSenderId: json['last_message_sender_id'] as String,
      lastMessageAt: DateTime.parse(json['last_message_at'] as String),
      unreadCount: (json['unread_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ChatRoomSummaryModelToJson(
        _ChatRoomSummaryModel instance) =>
    <String, dynamic>{
      'chat_room_id': instance.chatRoomId,
      'match_id': instance.matchId,
      'user_id': instance.userId,
      'name': instance.name,
      'birth_date': instance.birthDate.toIso8601String(),
      'address': _$AddressEnumMap[instance.address]!,
      'main_photo_url': instance.mainPhotoUrl,
      'last_message_id': instance.lastMessageId,
      'last_message_text': instance.lastMessageText,
      'last_message_sender_id': instance.lastMessageSenderId,
      'last_message_at': instance.lastMessageAt.toIso8601String(),
      'unread_count': instance.unreadCount,
    };

const _$AddressEnumMap = {
  Address.hokkaido: 'HOKKAIDO',
  Address.aomori: 'AOMORI',
  Address.iwate: 'IWATE',
  Address.miyagi: 'MIYAGI',
  Address.akita: 'AKITA',
  Address.yamagata: 'YAMAGATA',
  Address.fukushima: 'FUKUSHIMA',
  Address.ibaraki: 'IBARAKI',
  Address.tochigi: 'TOCHIGI',
  Address.gunma: 'GUNMA',
  Address.saitama: 'SAITAMA',
  Address.chiba: 'CHIBA',
  Address.tokyo: 'TOKYO',
  Address.kanagawa: 'KANAGAWA',
  Address.niigata: 'NIIGATA',
  Address.toyama: 'TOYAMA',
  Address.ishikawa: 'ISHIKAWA',
  Address.fukui: 'FUKUI',
  Address.yamanashi: 'YAMANASHI',
  Address.nagano: 'NAGANO',
  Address.gifu: 'GIFU',
  Address.shizuoka: 'SHIZUOKA',
  Address.aichi: 'AICHI',
  Address.mie: 'MIE',
  Address.shiga: 'SHIGA',
  Address.kyoto: 'KYOTO',
  Address.osaka: 'OSAKA',
  Address.hyogo: 'HYOGO',
  Address.nara: 'NARA',
  Address.wakayama: 'WAKAYAMA',
  Address.tottori: 'TOTTORI',
  Address.shimane: 'SHIMANE',
  Address.okayama: 'OKAYAMA',
  Address.hiroshima: 'HIROSHIMA',
  Address.yamaguchi: 'YAMAGUCHI',
  Address.tokushima: 'TOKUSHIMA',
  Address.kagawa: 'KAGAWA',
  Address.ehime: 'EHIME',
  Address.kochi: 'KOCHI',
  Address.fukuoka: 'FUKUOKA',
  Address.saga: 'SAGA',
  Address.nagasaki: 'NAGASAKI',
  Address.kumamoto: 'KUMAMOTO',
  Address.oita: 'OITA',
  Address.miyazaki: 'MIYAZAKI',
  Address.kagoshima: 'KAGOSHIMA',
  Address.okinawa: 'OKINAWA',
  Address.other: 'OTHER',
};
