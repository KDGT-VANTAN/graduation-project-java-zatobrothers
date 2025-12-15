import 'package:reimi_app/data/datasources/auth_remote_datasource.dart';
import 'package:reimi_app/domain/entities/user_entity.dart';
import 'package:reimi_app/domain/repositories/auth_repository.dart';
import 'package:reimi_app/domain/value_objects/user_auth_provider.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(this._remote);

  final AuthRemoteDataSource _remote;

  @override
  Future<UserEntity?> getCurrentUser() {
    return _remote.getCurrentUser();
  }

  @override
  Future<UserEntity?> signIn(UserAuthProvider provider) {
    return _remote.signIn(provider);
  }

  @override
  Future<void> signOut() {
    return _remote.signOut();
  }
}
