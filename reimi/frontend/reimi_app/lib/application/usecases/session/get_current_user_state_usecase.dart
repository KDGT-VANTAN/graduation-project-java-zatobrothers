import 'package:flutter/foundation.dart';
import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/presentation/app/session/app_user_state.dart';
import '../../../domain/repositories/user_repository.dart';

class GetCurrentUserStateUseCase {
  const GetCurrentUserStateUseCase(this._repository);
  final UserRepository _repository;

  Future<AppUserState> call() async {
    try {
      final user = await _repository.fetchCurrentUser();
      return AppUserState.existingUser(user);
    } on ResourceNotFoundException {
      return const AppUserState.newUser();
    } on UnauthenticatedException {
      rethrow;
    } on ApiException catch (e) {
      return AppUserState.currentUserError(e.message);
    } catch (e, stack) {
      debugPrint('Unexpected error: $e\n$stack');
      return const AppUserState.currentUserError(
        '予期しないエラーが発生しました',
      );
    }
  }
}
