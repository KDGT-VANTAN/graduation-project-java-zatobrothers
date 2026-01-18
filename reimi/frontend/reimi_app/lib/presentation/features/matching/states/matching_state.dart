import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/matching_users_read_model.dart';

part 'matching_state.freezed.dart';

@freezed
abstract class MatchingState with _$MatchingState {
  const factory MatchingState({
    MatchingUsersReadModel?  users,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _MatchingState;
}
