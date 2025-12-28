import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/message_type.dart';

part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

@freezed
abstract class ChatMessageModel with _$ChatMessageModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ChatMessageModel({
    required String messageId,
    required String chatRoomId,
    required String senderId,
    required String content,
    required MessageType messageType,
    required DateTime sentAt,
  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);
}
