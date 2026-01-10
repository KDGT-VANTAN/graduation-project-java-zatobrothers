import 'package:reimi_app/data/datasources/remote/user_remote_datasource.dart';
import 'package:reimi_app/data/extensions/create_user_dto_extension.dart';
import 'package:reimi_app/domain/params/create_user_params.dart';
import 'package:reimi_app/domain/read_models/app_user_read_model.dart';
import 'package:reimi_app/domain/read_models/home_user_read_model.dart';
import 'package:reimi_app/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(this._remote);

  final UserRemoteDataSource _remote;

  @override
  Future<List<HomeUserReadModel>> fetchHomeUsers() {
    return _remote.fetchHomeUsers();
  }

  @override
  Future<AppUserReadModel> fetchCurrentUser() async {
    return _remote.fetchCurrentUser();
  }

  @override
  Future<void> createUser(CreateUserParams params) {
    final dto = params.toDto();
    return _remote.createUser(dto);
  }
}
