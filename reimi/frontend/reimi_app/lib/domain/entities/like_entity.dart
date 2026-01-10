import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_entity.freezed.dart';

@freezed
abstract class LikeEntity with _$LikeEntity {
  const factory LikeEntity({
    required String id,
    required String fromUserId,
    required String toUserId,
    required DateTime createdAt,
  }) = _LikeEntity;
}
