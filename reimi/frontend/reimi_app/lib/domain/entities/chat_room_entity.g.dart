// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatRoomEntity _$ChatRoomEntityFromJson(Map<String, dynamic> json) =>
    _ChatRoomEntity(
      id: json['id'] as String,
      matchId: json['match_id'] as String,
      createdAt: const IsoDateTimeOrNullConverter()
          .fromJson(json['created_at'] as String?),
    );

Map<String, dynamic> _$ChatRoomEntityToJson(_ChatRoomEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'match_id': instance.matchId,
      'created_at':
          const IsoDateTimeOrNullConverter().toJson(instance.createdAt),
    };
