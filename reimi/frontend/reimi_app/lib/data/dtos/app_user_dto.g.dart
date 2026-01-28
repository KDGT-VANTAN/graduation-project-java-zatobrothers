// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppUserDto _$AppUserDtoFromJson(Map<String, dynamic> json) => _AppUserDto(
      id: json['id'] as String,
      name: json['name'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      birthDate: DateTime.parse(json['birthDate'] as String),
      address: $enumDecode(_$AddressEnumMap, json['address']),
      email: json['email'] as String,
      status: $enumDecode(_$UserStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$AppUserDtoToJson(_AppUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender]!,
      'birthDate': instance.birthDate.toIso8601String(),
      'address': _$AddressEnumMap[instance.address]!,
      'email': instance.email,
      'status': _$UserStatusEnumMap[instance.status]!,
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
