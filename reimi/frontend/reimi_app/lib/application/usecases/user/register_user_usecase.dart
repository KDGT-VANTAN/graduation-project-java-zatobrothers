import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/domain/params/create_user_params.dart';
import 'package:reimi_app/domain/repositories/user_repository.dart';

class RegisterUserUseCase {
  const RegisterUserUseCase(this._repository);
  final UserRepository _repository;

  Future<void> call(CreateUserParams params) async {
    try {
      await _repository.createUser(params);
    } on ApiException {
      rethrow;
    }
  }
}
