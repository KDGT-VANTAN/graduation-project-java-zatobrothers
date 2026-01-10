import 'package:firebase_auth/firebase_auth.dart';
import '../value_objects/user_auth_provider.dart';

abstract class AuthRepository {
  Future<User?> signIn(UserAuthProvider provider);
  Future<void> signOut();
}
