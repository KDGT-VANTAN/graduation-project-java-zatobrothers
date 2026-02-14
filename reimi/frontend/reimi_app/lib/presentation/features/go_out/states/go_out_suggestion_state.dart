import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/go_out_suggestion_read_model.dart';

part 'go_out_suggestion_state.freezed.dart';

@freezed
abstract class GoOutSuggestionState with _$GoOutSuggestionState {
  const factory GoOutSuggestionState({
    GoOutSuggestionReadModel? suggestion,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _GoOutSuggestionState;
}
