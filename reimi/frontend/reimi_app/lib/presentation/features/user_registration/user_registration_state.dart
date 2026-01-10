import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';

part 'user_registration_state.freezed.dart';

@freezed
abstract class UserRegistrationState with _$UserRegistrationState {
  const factory UserRegistrationState({
    Gender? gender,
    DateTime? birthDate,
    Address? address,
    String? name,
    String? introduction,
    String? mainPhoto,
    String? email,
    @Default(1) int currentPage,
    @Default(6) int totalPages,
    @Default(UserRegistrationStatus.idle) UserRegistrationStatus status,
    String? errorMessage,
  }) = _UserRegistrationState;
}

enum UserRegistrationStatus {
  idle,
  submitting,
  success,
  failure,
}
