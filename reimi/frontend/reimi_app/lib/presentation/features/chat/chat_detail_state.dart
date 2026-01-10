import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/chat_message_read_model.dart';
import 'package:reimi_app/domain/read_models/user_with_profile_read_model.dart';

part 'chat_detail_state.freezed.dart';

@freezed
abstract class ChatDetailState with _$ChatDetailState {
  const factory ChatDetailState({
    @Default(<ChatMessageReadModel>[]) List<ChatMessageReadModel> chatMessages,
    UserWithProfileReadModel? userProfile,
    @Default(false) bool isLoadingMessages,
    @Default(false) bool isLoadingProfile,
    String? errorMessage,
    @Default('') String inputText,
  }) = _ChatDetailState;
}
