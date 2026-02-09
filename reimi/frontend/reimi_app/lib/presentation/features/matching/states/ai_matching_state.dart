import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/ai_matching_user_read_model.dart';

part 'ai_matching_state.freezed.dart';

@freezed
abstract class AIMatchingState with _$AIMatchingState {
  const factory AIMatchingState({
    AIMatchingUserReadModel?  user,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _AIMatchingState;
}
