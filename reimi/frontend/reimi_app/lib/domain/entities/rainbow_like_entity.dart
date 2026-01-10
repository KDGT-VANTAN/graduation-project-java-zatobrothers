import 'package:freezed_annotation/freezed_annotation.dart';

part 'rainbow_like_entity.freezed.dart';

@freezed
abstract class RainbowLikeEntity with _$RainbowLikeEntity {
  const factory RainbowLikeEntity({
    required String id,
    required String fromUserId,
    required String toUserId,
    required String message,
    required DateTime createdAt,
  }) = _RainbowLikeEntity;
}
