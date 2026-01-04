import 'package:reimi_app/data/datasources/user_remote_datasource.dart';
import 'package:reimi_app/data/models/app_user_model.dart';
import 'package:reimi_app/data/models/home_user_model.dart';
import 'package:reimi_app/data/models/user_registration_model.dart';
import 'package:reimi_app/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(this._remote);

  final UserRemoteDataSource _remote;

  @override
  Future<List<HomeUserModel>> fetchUsers() {
    return _remote.fetchUsers();
  }

  @override
  Future<AppUserModel?> fetchCurrentUser() {
    return _remote.fetchCurrentUser();
  }

  @override
  Future<bool> createUser(UserRegistrationModel user) {
    return _remote.createUser(user);
  }
}
