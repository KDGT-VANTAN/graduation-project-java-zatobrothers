// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserRegistrationModel _$UserRegistrationModelFromJson(
        Map<String, dynamic> json) =>
    _UserRegistrationModel(
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      birthDate:
          const YyyyMmDdDateConverter().fromJson(json['birthDate'] as String?),
      address: $enumDecodeNullable(_$AddressEnumMap, json['address']),
      name: json['name'] as String?,
      introduction: json['introduction'] as String?,
      mainPhotoUrl: json['mainPhotoUrl'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UserRegistrationModelToJson(
        _UserRegistrationModel instance) =>
    <String, dynamic>{
      'gender': _$GenderEnumMap[instance.gender],
      'birthDate': const YyyyMmDdDateConverter().toJson(instance.birthDate),
      'address': _$AddressEnumMap[instance.address],
      'name': instance.name,
      'introduction': instance.introduction,
      'mainPhotoUrl': instance.mainPhotoUrl,
      'email': instance.email,
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
