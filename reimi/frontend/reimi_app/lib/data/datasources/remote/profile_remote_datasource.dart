import 'package:dio/dio.dart';
import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/data/dtos/update_profile_dto.dart';
import 'package:reimi_app/data/dtos/user_with_profile_dto.dart';
import 'package:reimi_app/data/mapper/update_profile_mapper.dart';

abstract class ProfileRemoteDataSource {
  Future<UserWithProfileDto> fetchUserProfile(String userId);
  Future<void> updateUserProfile({
    required UpdateProfileDto dto,
    required String userId,
  });
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  const ProfileRemoteDataSourceImpl(this._dio);
  final Dio _dio;

  @override
  Future<UserWithProfileDto> fetchUserProfile(String userId) async {
    try {
      final response = await _dio.get('/api/v1/users/$userId/profile');
      return UserWithProfileDto.fromJson(response.data);
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }

  @override
  Future<void> updateUserProfile({
    required UpdateProfileDto dto,
    required String userId,
  }) async {
    final formData = await dto.toFormData();
    try {
      final response = await _dio.put(
        '/api/v1/users/$userId/profile',
        data: formData,
        options: Options(
          contentType: 'multipart/form-data',
          validateStatus: (_) => true,
        ),
      );
      if (response.statusCode != 204) {
        throw ApiException.fromResponse(response);
      }
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }
}
