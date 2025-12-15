import 'package:reimi_app/domain/entities/user_entity.dart';
import 'package:reimi_app/domain/repositories/auth_repository.dart';
import 'package:reimi_app/domain/value_objects/user_auth_provider.dart';

class SignInWithProviderUseCase {
  const SignInWithProviderUseCase(this._repository);
  final AuthRepository _repository;

  Future<UserEntity?> call(UserAuthProvider provider) {
    return _repository.signIn(provider);
  }
}
