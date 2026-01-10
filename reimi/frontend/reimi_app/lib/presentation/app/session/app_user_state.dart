import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/app_user_read_model.dart';

part 'app_user_state.freezed.dart';

@freezed
sealed class AppUserState with _$AppUserState {
  const factory AppUserState.existingUser(AppUserReadModel user) =
      _ExistingUser;
  const factory AppUserState.newUser() = _NewUser;
  const factory AppUserState.currentUserError(String message) =
      _CurrentUserError;
}
