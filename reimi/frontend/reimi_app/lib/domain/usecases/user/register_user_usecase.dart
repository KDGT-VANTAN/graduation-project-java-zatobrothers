import 'package:reimi_app/data/models/user_registration_model.dart';
import 'package:reimi_app/domain/repositories/user_repository.dart';

class RegisterUserUseCase {
  const RegisterUserUseCase(this._repository);
  final UserRepository _repository;

  Future<bool> call(UserRegistrationModel user) {
    return _repository.createUser(user);
  }
}
