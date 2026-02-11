import 'package:reimi_app/domain/params/create_user_params.dart';
import 'package:reimi_app/domain/read_models/app_user_read_model.dart';
import 'package:reimi_app/domain/read_models/home_user_read_model.dart';
import 'package:reimi_app/domain/read_models/user_account_read_model.dart';

abstract class UserRepository {
  Future<List<HomeUserReadModel>> fetchHomeUsers();
  Future<AppUserReadModel> fetchCurrentUser();
  Future<void> createUser(CreateUserParams params);
  Future<UserAccountReadModel> fetchUserAccount();
}
