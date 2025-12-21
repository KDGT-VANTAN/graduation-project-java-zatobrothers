import 'package:reimi_app/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<List<UserEntity>?> fetchUsers();
  Future<UserEntity?> fetchUser(String userId);
}
