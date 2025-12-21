// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeUserModel _$HomeUserModelFromJson(Map<String, dynamic> json) =>
    _HomeUserModel(
      userId: json['user_id'] as String,
      firebaseUid: json['firebase_uid'] as String,
      name: json['name'] as String,
      birthDate:
          const IsoDateTimeConverter().fromJson(json['birth_date'] as String),
      address: $enumDecode(_$AddressEnumMap, json['address']),
      mainPhotoUrl: json['main_photo_url'] as String,
      lastLoginAt: const IsoDateTimeOrNullConverter()
          .fromJson(json['last_login_at'] as String?),
      status: $enumDecode(_$UserStatusEnumMap, json['status']),
      introduction: json['introduction'] as String,
    );

Map<String, dynamic> _$HomeUserModelToJson(_HomeUserModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'firebase_uid': instance.firebaseUid,
      'name': instance.name,
      'birth_date': const IsoDateTimeConverter().toJson(instance.birthDate),
      'address': _$AddressEnumMap[instance.address]!,
      'main_photo_url': instance.mainPhotoUrl,
      'last_login_at':
          const IsoDateTimeOrNullConverter().toJson(instance.lastLoginAt),
      'status': _$UserStatusEnumMap[instance.status]!,
      'introduction': instance.introduction,
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

const _$UserStatusEnumMap = {
  UserStatus.active: 'ACTIVE',
  UserStatus.withdrawn: 'WITHDRAWN',
  UserStatus.banned: 'BANNED',
  UserStatus.suspended: 'SUSPENDED',
};
