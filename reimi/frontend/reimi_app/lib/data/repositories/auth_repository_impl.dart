import 'package:firebase_auth/firebase_auth.dart';
import 'package:reimi_app/data/datasources/auth_remote_datasource.dart';
import 'package:reimi_app/domain/repositories/auth_repository.dart';
import 'package:reimi_app/domain/value_objects/user_auth_provider.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(this._remote);

  final AuthRemoteDataSource _remote;

  @override
  Future<User?> getCurrentUser() {
    return _remote.getCurrentUser();
  }

  @override
  Future<User?> signIn(UserAuthProvider provider) {
    return _remote.signIn(provider);
  }

  @override
  Future<void> signOut() {
    return _remote.signOut();
  }
}
