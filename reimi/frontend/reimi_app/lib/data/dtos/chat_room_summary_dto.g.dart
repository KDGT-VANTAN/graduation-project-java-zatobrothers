// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatRoomSummaryDto _$ChatRoomSummaryDtoFromJson(Map<String, dynamic> json) =>
    _ChatRoomSummaryDto(
      chatRoomId: json['chatRoomId'] as String,
      userId: json['userId'] as String,
      name: json['name'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      address: $enumDecode(_$AddressEnumMap, json['address']),
      mainPhotoUrl: json['mainPhotoUrl'] as String,
      lastMessageText: json['lastMessageText'] as String,
      lastSentAt: DateTime.parse(json['lastSentAt'] as String),
      unreadCount: (json['unreadCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ChatRoomSummaryDtoToJson(_ChatRoomSummaryDto instance) =>
    <String, dynamic>{
      'chatRoomId': instance.chatRoomId,
      'userId': instance.userId,
      'name': instance.name,
      'birthDate': instance.birthDate.toIso8601String(),
      'address': _$AddressEnumMap[instance.address]!,
      'mainPhotoUrl': instance.mainPhotoUrl,
      'lastMessageText': instance.lastMessageText,
      'lastSentAt': instance.lastSentAt.toIso8601String(),
      'unreadCount': instance.unreadCount,
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
