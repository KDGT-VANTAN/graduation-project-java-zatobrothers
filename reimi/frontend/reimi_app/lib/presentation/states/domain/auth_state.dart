import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/entities/user_entity.dart';
import 'package:reimi_app/presentation/states/domain/auth_failure.dart';


part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated(UserEntity user) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.failure(AuthFailure failure) = _Failure;
}
