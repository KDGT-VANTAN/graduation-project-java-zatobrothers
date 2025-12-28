import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/iso_date_time_converter.dart';
import 'package:reimi_app/domain/value_objects/message_type.dart';

part 'message_entity.freezed.dart';
part 'message_entity.g.dart';

@freezed
abstract class MessageEntity with _$MessageEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MessageEntity({
    required String id,
    required String chatRoomId,
    required String senderId,
    required MessageType messageType,
    @IsoDateTimeConverter() required DateTime sentAt,
  }) = _MessageEntity;

  factory MessageEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageEntityFromJson(json);
}
