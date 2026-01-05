import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_room_entity.freezed.dart';

@freezed
abstract class ChatRoomEntity with _$ChatRoomEntity {
  const factory ChatRoomEntity({
    required String id,
    required String matchId,
    required DateTime createdAt,
  }) = _ChatRoomEntity;
}
