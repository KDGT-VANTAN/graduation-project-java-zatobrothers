// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matching_users_read_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MatchingUsersReadModel _$MatchingUsersReadModelFromJson(
        Map<String, dynamic> json) =>
    _MatchingUsersReadModel(
      otherUserName: json['otherUserName'] as String,
      otherUserMainPhotoUrl: json['otherUserMainPhotoUrl'] as String,
      currentUserMainPhotoUrl: json['currentUserMainPhotoUrl'] as String,
    );

Map<String, dynamic> _$MatchingUsersReadModelToJson(
        _MatchingUsersReadModel instance) =>
    <String, dynamic>{
      'otherUserName': instance.otherUserName,
      'otherUserMainPhotoUrl': instance.otherUserMainPhotoUrl,
      'currentUserMainPhotoUrl': instance.currentUserMainPhotoUrl,
    };
