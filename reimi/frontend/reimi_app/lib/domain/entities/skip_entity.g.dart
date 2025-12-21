// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skip_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SkipEntity _$SkipEntityFromJson(Map<String, dynamic> json) => _SkipEntity(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      skippedUserId: json['skipped_user_id'] as String,
      createdAt: const IsoDateTimeOrNullConverter()
          .fromJson(json['created_at'] as String?),
    );

Map<String, dynamic> _$SkipEntityToJson(_SkipEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'skipped_user_id': instance.skippedUserId,
      'created_at':
          const IsoDateTimeOrNullConverter().toJson(instance.createdAt),
    };
