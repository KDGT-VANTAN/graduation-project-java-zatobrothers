// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LikeEntity _$LikeEntityFromJson(Map<String, dynamic> json) => _LikeEntity(
      id: json['id'] as String,
      fromUserId: json['from_user_id'] as String,
      toUserId: json['to_user_id'] as String,
      createdAt: const IsoDateTimeOrNullConverter()
          .fromJson(json['created_at'] as String?),
    );

Map<String, dynamic> _$LikeEntityToJson(_LikeEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from_user_id': instance.fromUserId,
      'to_user_id': instance.toUserId,
      'created_at':
          const IsoDateTimeOrNullConverter().toJson(instance.createdAt),
    };
