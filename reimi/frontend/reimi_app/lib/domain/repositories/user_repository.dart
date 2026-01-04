import 'package:reimi_app/data/models/app_user_model.dart';
import 'package:reimi_app/data/models/home_user_model.dart';
import 'package:reimi_app/data/models/user_registration_model.dart';

abstract class UserRepository {
  Future<List<HomeUserModel>?> fetchUsers();
  Future<AppUserModel?> fetchCurrentUser();
  Future<bool> createUser(UserRegistrationModel user);
}
