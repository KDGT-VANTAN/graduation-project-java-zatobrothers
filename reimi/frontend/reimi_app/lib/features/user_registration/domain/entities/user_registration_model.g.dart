// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserRegistrationModel _$UserRegistrationModelFromJson(
        Map<String, dynamic> json) =>
    _UserRegistrationModel(
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      birthDate: json['birth_date'] == null
          ? null
          : DateTime.parse(json['birth_date'] as String),
      address: $enumDecodeNullable(_$AddressEnumMap, json['address']),
      name: json['name'] as String?,
      introduction: json['introduction'] as String?,
      mainPhotoUrl: json['main_photo_url'] as String?,
    );

Map<String, dynamic> _$UserRegistrationModelToJson(
        _UserRegistrationModel instance) =>
    <String, dynamic>{
      'gender': _$GenderEnumMap[instance.gender],
      'birth_date': instance.birthDate?.toIso8601String(),
      'address': _$AddressEnumMap[instance.address],
      'name': instance.name,
      'introduction': instance.introduction,
      'main_photo_url': instance.mainPhotoUrl,
    };

const _$GenderEnumMap = {
  Gender.man: '男性',
  Gender.woman: '女性',
  Gender.others: 'その他',
};

const _$AddressEnumMap = {
  Address.hokkaido: '北海道',
  Address.aomori: '青森県',
  Address.iwate: '岩手県',
  Address.miyagi: '宮城県',
  Address.akita: '秋田県',
  Address.yamagata: '山形県',
  Address.fukushima: '福島県',
  Address.ibaraki: '茨城県',
  Address.tochigi: '栃木県',
  Address.gunma: '群馬県',
  Address.saitama: '埼玉県',
  Address.chiba: '千葉県',
  Address.tokyo: '東京都',
  Address.kanagawa: '神奈川県',
  Address.niigata: '新潟県',
  Address.toyama: '富山県',
  Address.ishikawa: '石川県',
  Address.fukui: '福井県',
  Address.yamanashi: '山梨県',
  Address.nagano: '長野県',
  Address.gifu: '岐阜県',
  Address.shizuoka: '静岡県',
  Address.aichi: '愛知県',
  Address.mie: '三重県',
  Address.shiga: '滋賀県',
  Address.kyoto: '京都府',
  Address.osaka: '大阪府',
  Address.hyogo: '兵庫県',
  Address.nara: '奈良県',
  Address.wakayama: '和歌山県',
  Address.tottori: '鳥取県',
  Address.shimane: '島根県',
  Address.okayama: '岡山県',
  Address.hiroshima: '広島県',
  Address.yamaguchi: '山口県',
  Address.tokushima: '徳島県',
  Address.kagawa: '香川県',
  Address.ehime: '愛媛県',
  Address.kochi: '高知県',
  Address.fukuoka: '福岡県',
  Address.saga: '佐賀県',
  Address.nagasaki: '長崎県',
  Address.kumamoto: '熊本県',
  Address.oita: '大分県',
  Address.miyazaki: '宮崎県',
  Address.kagoshima: '鹿児島県',
  Address.okinawa: '沖縄県',
  Address.others: 'その他',
};
