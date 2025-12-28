import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/address.dart';

part 'chat_room_summary_model.freezed.dart';
part 'chat_room_summary_model.g.dart';

@freezed
abstract class ChatRoomSummaryModel with _$ChatRoomSummaryModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ChatRoomSummaryModel({
    required String chatRoomId,
    required String matchId,
    required String userId,
    required String name,
    required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
    required String lastMessageId,
    required String lastMessageText,
    required String lastMessageSenderId,
    required DateTime lastMessageAt,
    @Default(0) int unreadCount,
  }) = _ChatRoomSummaryModel;
  factory ChatRoomSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomSummaryModelFromJson(json);
}
