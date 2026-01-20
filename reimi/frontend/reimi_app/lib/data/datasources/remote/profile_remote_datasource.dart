import 'package:dio/dio.dart';
import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/data/dtos/update_profile_dto.dart';
import 'package:reimi_app/data/extensions/update_profile_dto_extension.dart';
import 'package:reimi_app/domain/read_models/user_with_profile_read_model.dart';

abstract class ProfileRemoteDataSource {
  Future<UserWithProfileReadModel> fetchUserProfile(String userId);
  Future<void> updateUserProfile({
    required UpdateProfileDto dto,
    required String userId,
  });
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  const ProfileRemoteDataSourceImpl(this._dio);
  final Dio _dio;

  @override
  Future<UserWithProfileReadModel> fetchUserProfile(String userId) async {
    try {
      final response = await _dio.get('/api/v1/users/$userId/profile');
      return UserWithProfileReadModel.fromJson(response.data);
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
