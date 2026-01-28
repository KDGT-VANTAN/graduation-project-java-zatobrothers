import 'package:dio/dio.dart';
import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/data/dtos/like_user_dto.dart';


abstract class LikeRemoteDataSource {
  Future<List<LikeUserDto>> fetchLikeUsersFromUser();
  Future<List<LikeUserDto>> fetchLikeUsersToUser();
  Future<void> likeUser(String userId);
}

class LikeRemoteDataSourceImpl implements LikeRemoteDataSource {
  const LikeRemoteDataSourceImpl(this._dio);
  final Dio _dio;

  @override
  Future<List<LikeUserDto>> fetchLikeUsersFromUser() async {
    try {
      final response = await _dio.get('/api/v1/likes/users/received');
      final List data = response.data as List;
      return data
          .map((e) => LikeUserDto.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }

  @override
  Future<List<LikeUserDto>> fetchLikeUsersToUser() async {
    try {
      final response = await _dio.get('/api/v1/likes/users/given');
      final List data = response.data as List;
      return data
          .map((e) => LikeUserDto.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }

  @override
  Future<void> likeUser(String userId) async {
    try {
      final response = await _dio.post('/api/v1/likes/$userId');
      if (response.statusCode != 201) {
        throw ApiException.fromResponse(response);
      }
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }
}
