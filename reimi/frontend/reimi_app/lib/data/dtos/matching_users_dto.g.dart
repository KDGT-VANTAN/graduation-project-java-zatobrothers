// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matching_users_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MatchingUsersDto _$MatchingUsersDtoFromJson(Map<String, dynamic> json) =>
    _MatchingUsersDto(
      otherUserName: json['otherUserName'] as String,
      otherUserMainPhotoUrl: json['otherUserMainPhotoUrl'] as String,
      currentUserMainPhotoUrl: json['currentUserMainPhotoUrl'] as String,
    );

Map<String, dynamic> _$MatchingUsersDtoToJson(_MatchingUsersDto instance) =>
    <String, dynamic>{
      'otherUserName': instance.otherUserName,
      'otherUserMainPhotoUrl': instance.otherUserMainPhotoUrl,
      'currentUserMainPhotoUrl': instance.currentUserMainPhotoUrl,
    };
