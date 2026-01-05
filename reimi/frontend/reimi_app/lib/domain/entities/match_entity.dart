import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_entity.freezed.dart';

@freezed
abstract class MatchEntity with _$MatchEntity {
  const factory MatchEntity({
    required String id,
    required String user1Id,
    required String user2Id,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _MatchEntity;
}
