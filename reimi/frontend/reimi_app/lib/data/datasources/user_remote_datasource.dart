import 'package:reimi_app/domain/entities/user_entity.dart';

abstract class UserRemoteDataSource {
  Future<List<UserEntity>?> fetchUsers();
  Future<UserEntity?> fetchUser(String userId);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  const UserRemoteDataSourceImpl();

  @override
  Future<List<UserEntity>?> fetchUsers() async {
    return [];
  }

  @override
  Future<UserEntity?> fetchUser(String userId) async {
    return null;
  }
}
