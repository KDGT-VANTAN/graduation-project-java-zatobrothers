import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/data/models/user_registration_model.dart';

part 'user_registration_state.freezed.dart';

@freezed
abstract class UserRegistrationState with _$UserRegistrationState {
  const factory UserRegistrationState({
    UserRegistrationModel? data,
    @Default(1) int currentPage,
    @Default(6) int totalPages,
  }) = _UserRegistrationState;
}
