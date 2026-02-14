import 'package:freezed_annotation/freezed_annotation.dart';

part 'go_out_conditions_state.freezed.dart';

@freezed
abstract class GoOutConditionsState with _$GoOutConditionsState {
  const factory GoOutConditionsState({
    DateTime? goOutDate,
    String? goOutPlace,
    @Default(GoOutConditionsStatus.idle) GoOutConditionsStatus status,
    String? errorMessage,
    @Default(false) bool isChanged,
  }) = _GoOutConditionsState;

  const GoOutConditionsState._();

  bool get canSubmit =>
      goOutDate != null &&
      goOutPlace?.isNotEmpty == true;
}

enum GoOutConditionsStatus {
  idle,
  submitting,
  success,
  failure,
}
