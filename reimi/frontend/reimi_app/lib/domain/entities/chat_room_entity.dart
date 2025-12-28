import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';

part 'chat_room_entity.freezed.dart';
part 'chat_room_entity.g.dart';

@freezed
abstract class ChatRoomEntity with _$ChatRoomEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ChatRoomEntity({
    required String id,
    required String matchId,
    @IsoDateTimeOrNullConverter() DateTime? createdAt,
  }) = _ChatRoomEntity;

  factory ChatRoomEntity.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomEntityFromJson(json);
}
