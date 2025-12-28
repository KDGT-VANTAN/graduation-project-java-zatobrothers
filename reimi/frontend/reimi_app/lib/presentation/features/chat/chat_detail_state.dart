import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/data/models/chat_message_model.dart';
import 'package:reimi_app/data/models/user_with_profile_model.dart';

part 'chat_detail_state.freezed.dart';

@freezed
abstract class ChatDetailState with _$ChatDetailState {
  const factory ChatDetailState({
    @Default(<ChatMessageModel>[]) List<ChatMessageModel> chatMessages,
    UserWithProfileModel? userProfile,
    @Default(false) bool isLoadingMessages,
    @Default(false) bool isLoadingProfile,
    String? errorMessage,
    @Default('') String inputText,
  }) = _ChatDetailState;
}
