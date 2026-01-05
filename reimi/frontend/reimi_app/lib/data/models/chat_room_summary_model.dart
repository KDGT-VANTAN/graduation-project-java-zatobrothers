import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/core/utils/yyyy_mm_dd_date_converter.dart';
import 'package:reimi_app/domain/value_objects/address.dart';

part 'chat_room_summary_model.freezed.dart';
part 'chat_room_summary_model.g.dart';

@freezed
abstract class ChatRoomSummaryModel with _$ChatRoomSummaryModel {
  const factory ChatRoomSummaryModel({
    required String chatRoomId,
    required String userId,
    required String name,
    @YyyyMmDdDateConverter() required DateTime birthDate,
    required Address address,
    required String mainPhotoUrl,
    required String lastMessageText,
    required DateTime lastSentAt,
    @Default(0) int unreadCount,
  }) = _ChatRoomSummaryModel;
  factory ChatRoomSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomSummaryModelFromJson(json);
}
