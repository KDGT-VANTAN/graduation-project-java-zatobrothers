import 'package:reimi_app/data/datasources/remote/user_remote_datasource.dart';
import 'package:reimi_app/data/mapper/app_user_mapper.dart';
import 'package:reimi_app/data/mapper/create_user_mapper.dart';
import 'package:reimi_app/data/mapper/home_user_mapper.dart';
import 'package:reimi_app/data/mapper/user_account_mapper.dart';
import 'package:reimi_app/domain/params/create_user_params.dart';
import 'package:reimi_app/domain/read_models/app_user_read_model.dart';
import 'package:reimi_app/domain/read_models/home_user_read_model.dart';
import 'package:reimi_app/domain/read_models/user_account_read_model.dart';
import 'package:reimi_app/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(this._remote);

  final UserRemoteDataSource _remote;

  @override
  Future<List<HomeUserReadModel>> fetchHomeUsers() async {
    final dtos = await _remote.fetchHomeUsers();
    return dtos.toReadModels();
  }

  @override
  Future<AppUserReadModel> fetchCurrentUser() async {
    final dto = await _remote.fetchCurrentUser();
    return dto.toReadModel();
  }

  @override
  Future<void> createUser(CreateUserParams params) {
    final dto = params.toDto();
    return _remote.createUser(dto);
  }

  @override
  Future<UserAccountReadModel> fetchUserAccount() async {
    final dto = await _remote.fetchUserAccount();
    return dto.toReadModel();
  }
}
