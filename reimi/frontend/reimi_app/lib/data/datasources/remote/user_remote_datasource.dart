import 'package:dio/dio.dart';
import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/data/dtos/app_user_dto.dart';
import 'package:reimi_app/data/dtos/create_user_dto.dart';
import 'package:reimi_app/data/dtos/home_user_dto.dart';
import 'package:reimi_app/data/dtos/user_account_dto.dart';
import 'package:reimi_app/data/mapper/create_user_mapper.dart';

abstract class UserRemoteDataSource {
  Future<List<HomeUserDto>> fetchHomeUsers();
  Future<AppUserDto> fetchCurrentUser();
  Future<void> createUser(CreateUserDto dto);
  Future<UserAccountDto> fetchUserAccount();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  const UserRemoteDataSourceImpl(this._dio);
  final Dio _dio;

  @override
  Future<List<HomeUserDto>> fetchHomeUsers() async {
    try {
      final response = await _dio.get('/api/v1/users');
      final List data = response.data as List;
      return data
          .map((e) => HomeUserDto.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }

  @override
  Future<AppUserDto> fetchCurrentUser() async {
    try {
      final response = await _dio.get('/api/v1/users/me');
      return AppUserDto.fromJson(response.data);
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }

  @override
  Future<void> createUser(CreateUserDto dto) async {
    final formData = await dto.toFormData();
    try {
      final response = await _dio.post(
        '/api/v1/users',
        data: formData,
        options: Options(
          contentType: 'multipart/form-data',
          validateStatus: (_) => true,
        ),
      );
      if (response.statusCode != 201) {
        throw ApiException.fromResponse(response);
      }
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }

  @override
  Future<UserAccountDto> fetchUserAccount() async {
    try {
      final response = await _dio.get('/users/me/account');
      return UserAccountDto.fromJson(response.data);
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }
}
