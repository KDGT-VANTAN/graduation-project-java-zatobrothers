import '../entities/user_entity.dart';
import '../value_objects/user_auth_provider.dart';

abstract class AuthRepository {
  Future<UserEntity?> getCurrentUser();
  Future<UserEntity?> signIn(UserAuthProvider provider);
  Future<void> signOut();
}
