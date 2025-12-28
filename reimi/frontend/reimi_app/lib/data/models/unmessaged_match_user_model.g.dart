// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unmessaged_match_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UnmessagedMatchUserModel _$UnmessagedMatchUserModelFromJson(
        Map<String, dynamic> json) =>
    _UnmessagedMatchUserModel(
      matchId: json['match_id'] as String,
      userId: json['user_id'] as String,
      mainPhotoUrl: json['main_photo_url'] as String,
    );

Map<String, dynamic> _$UnmessagedMatchUserModelToJson(
        _UnmessagedMatchUserModel instance) =>
    <String, dynamic>{
      'match_id': instance.matchId,
      'user_id': instance.userId,
      'main_photo_url': instance.mainPhotoUrl,
    };
