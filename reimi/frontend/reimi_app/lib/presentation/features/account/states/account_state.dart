import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/app_user_read_model.dart';

part 'account_state.freezed.dart';

@freezed
abstract class AccountState with _$AccountState {
  const factory AccountState({
    AppUserReadModel? user,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _AccountState;
}
