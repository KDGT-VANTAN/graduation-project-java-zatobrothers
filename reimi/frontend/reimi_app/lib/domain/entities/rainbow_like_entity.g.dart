// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rainbow_like_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RainbowLikeEntity _$RainbowLikeEntityFromJson(Map<String, dynamic> json) =>
    _RainbowLikeEntity(
      id: json['id'] as String,
      fromUserId: json['from_user_id'] as String,
      toUserId: json['to_user_id'] as String,
      message: json['message'] as String,
      createdAt: const IsoDateTimeOrNullConverter()
          .fromJson(json['created_at'] as String?),
    );

Map<String, dynamic> _$RainbowLikeEntityToJson(_RainbowLikeEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from_user_id': instance.fromUserId,
      'to_user_id': instance.toUserId,
      'message': instance.message,
      'created_at':
          const IsoDateTimeOrNullConverter().toJson(instance.createdAt),
    };
