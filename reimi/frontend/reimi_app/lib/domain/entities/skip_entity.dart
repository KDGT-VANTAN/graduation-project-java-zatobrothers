import 'package:freezed_annotation/freezed_annotation.dart';

part 'skip_entity.freezed.dart';

@freezed
abstract class SkipEntity with _$SkipEntity {
  const factory SkipEntity({
    required String id,
    required String userId,
    required String skippedUserId,
    required DateTime createdAt,
  }) = _SkipEntity;
}
