import 'package:dio/dio.dart';
import 'package:reimi_app/data/models/app_user_model.dart';
import 'package:reimi_app/data/models/home_user_model.dart';
import 'package:reimi_app/data/models/user_registration_model.dart';

abstract class UserRemoteDataSource {
  Future<List<HomeUserModel>> fetchUsers();
  Future<AppUserModel?> fetchCurrentUser();
  Future<bool> createUser(UserRegistrationModel user);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  const UserRemoteDataSourceImpl(this._dio);
  final Dio _dio;

  @override
  Future<List<HomeUserModel>> fetchUsers() async {
    final response = await _dio.get('/users');
    final List<HomeUserModel> users =
        response.data.map((res) => HomeUserModel.fromJson(res)).toList();
    return users;
  }

  @override
  Future<AppUserModel?> fetchCurrentUser() async {
    // null → 初回ユーザー
    // return null;
    return mockUser;
  }

  @override
  Future<bool> createUser(UserRegistrationModel user) async {
    final response = await _dio.post(
      '/users',
      data: user.toJson(),
    );
    if (response.statusCode == 201) {
      return true;
    }
    return false;
  }
}

const mockUser = AppUserModel(id: 'user_000', name: 'メンダコ');
