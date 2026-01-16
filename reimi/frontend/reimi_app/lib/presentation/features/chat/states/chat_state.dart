import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/chat_room_summary_read_model.dart';
import 'package:reimi_app/domain/read_models/unmessaged_match_user_read_model.dart';

part 'chat_state.freezed.dart';

@freezed
abstract class ChatState with _$ChatState {
  const factory ChatState({
    @Default(<UnmessagedMatchUserReadModel>[])
    List<UnmessagedMatchUserReadModel> unmessagedMatchUsers,
    @Default(<ChatRoomSummaryReadModel>[])
    List<ChatRoomSummaryReadModel> chatRoomSummaries,
    @Default(false) bool isLoadingUsers,
    @Default(false) bool isLoadingSummaries,
    String? errorMessage,
  }) = _ChatState;
}
