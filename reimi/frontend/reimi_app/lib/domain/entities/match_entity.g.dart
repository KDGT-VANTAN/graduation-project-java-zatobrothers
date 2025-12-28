// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MatchEntity _$MatchEntityFromJson(Map<String, dynamic> json) => _MatchEntity(
      id: json['id'] as String,
      user1Id: json['user1_id'] as String,
      user2Id: json['user2_id'] as String,
      isActive: json['is_active'] as bool,
      createdAt: const IsoDateTimeOrNullConverter()
          .fromJson(json['created_at'] as String?),
      updatedAt: const IsoDateTimeOrNullConverter()
          .fromJson(json['updated_at'] as String?),
    );

Map<String, dynamic> _$MatchEntityToJson(_MatchEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user1_id': instance.user1Id,
      'user2_id': instance.user2Id,
      'is_active': instance.isActive,
      'created_at':
          const IsoDateTimeOrNullConverter().toJson(instance.createdAt),
      'updated_at':
          const IsoDateTimeOrNullConverter().toJson(instance.updatedAt),
    };
