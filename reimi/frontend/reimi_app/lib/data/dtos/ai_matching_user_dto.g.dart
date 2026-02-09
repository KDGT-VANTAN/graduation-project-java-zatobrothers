// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_matching_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AIMatchingUserDto _$AIMatchingUserDtoFromJson(Map<String, dynamic> json) =>
    _AIMatchingUserDto(
      id: json['id'] as String,
      name: json['name'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      address: $enumDecode(_$AddressEnumMap, json['address']),
      mainPhotoUrl: json['mainPhotoUrl'] as String,
      typeImageUrl: json['typeImageUrl'] as String,
      typeCode: $enumDecode(_$WeatherPersonalityCodeEnumMap, json['typeCode']),
      typeName: json['typeName'] as String,
      isTodayReported: json['isTodayReported'] as bool?,
    );

Map<String, dynamic> _$AIMatchingUserDtoToJson(_AIMatchingUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birthDate': instance.birthDate.toIso8601String(),
      'address': _$AddressEnumMap[instance.address]!,
      'mainPhotoUrl': instance.mainPhotoUrl,
      'typeImageUrl': instance.typeImageUrl,
      'typeCode': _$WeatherPersonalityCodeEnumMap[instance.typeCode]!,
      'typeName': instance.typeName,
      'isTodayReported': instance.isTodayReported,
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

const _$WeatherPersonalityCodeEnumMap = {
  WeatherPersonalityCode.spoe: 'SPOE',
  WeatherPersonalityCode.spor: 'SPOR',
  WeatherPersonalityCode.spie: 'SPIE',
  WeatherPersonalityCode.spir: 'SPIR',
  WeatherPersonalityCode.sfoe: 'SFOE',
  WeatherPersonalityCode.sfor: 'SFOR',
  WeatherPersonalityCode.sfie: 'SFIE',
  WeatherPersonalityCode.sfir: 'SFIR',
  WeatherPersonalityCode.npoe: 'NPOE',
  WeatherPersonalityCode.npor: 'NPOR',
  WeatherPersonalityCode.npie: 'NPIE',
  WeatherPersonalityCode.npir: 'NPIR',
  WeatherPersonalityCode.nfoe: 'NFOE',
  WeatherPersonalityCode.nfor: 'NFOR',
  WeatherPersonalityCode.nfie: 'NFIE',
  WeatherPersonalityCode.nfir: 'NFIR',
};
