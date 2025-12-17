// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => _UserEntity(
      id: json['id'] as String,
      firebaseUid: json['firebase_uid'] as String,
      name: json['name'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      birthDate:
          const IsoDateTimeConverter().fromJson(json['birth_date'] as String),
      address: $enumDecode(_$AddressEnumMap, json['address']),
      mainPhotoUrl: json['main_photo_url'] as String,
      email: json['email'] as String,
      lastLoginAt: const IsoDateTimeOrNullConverter()
          .fromJson(json['last_login_at'] as String?),
      createdAt: const IsoDateTimeOrNullConverter()
          .fromJson(json['created_at'] as String?),
      updatedAt: const IsoDateTimeOrNullConverter()
          .fromJson(json['updated_at'] as String?),
      status: $enumDecode(_$UserStatusEnumMap, json['status']),
      withdrawalAt: const IsoDateTimeOrNullConverter()
          .fromJson(json['withdrawal_at'] as String?),
    );

Map<String, dynamic> _$UserEntityToJson(_UserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firebase_uid': instance.firebaseUid,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender]!,
      'birth_date': const IsoDateTimeConverter().toJson(instance.birthDate),
      'address': _$AddressEnumMap[instance.address]!,
      'main_photo_url': instance.mainPhotoUrl,
      'email': instance.email,
      'last_login_at':
          const IsoDateTimeOrNullConverter().toJson(instance.lastLoginAt),
      'created_at':
          const IsoDateTimeOrNullConverter().toJson(instance.createdAt),
      'updated_at':
          const IsoDateTimeOrNullConverter().toJson(instance.updatedAt),
      'status': _$UserStatusEnumMap[instance.status]!,
      'withdrawal_at':
          const IsoDateTimeOrNullConverter().toJson(instance.withdrawalAt),
    };

const _$GenderEnumMap = {
  Gender.man: 'MAN',
  Gender.woman: 'WOMAN',
  Gender.other: 'OTHER',
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
