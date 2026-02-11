import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/domain/read_models/user_account_read_model.dart';

part 'account_state.freezed.dart';

@freezed
abstract class AccountState with _$AccountState {
  const factory AccountState({
    UserAccountReadModel? userAccount,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _AccountState;
}
