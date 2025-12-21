import 'package:reimi_app/data/datasources/user_remote_datasource.dart';
import 'package:reimi_app/domain/entities/user_entity.dart';
import 'package:reimi_app/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(this._remote);

  final UserRemoteDataSource _remote;

  @override
  Future<List<UserEntity>?> fetchUsers() {
    return _remote.fetchUsers();
  }

  @override
  Future<UserEntity?> fetchUser(String userId) {
    return _remote.fetchUser(userId);
  }
}
