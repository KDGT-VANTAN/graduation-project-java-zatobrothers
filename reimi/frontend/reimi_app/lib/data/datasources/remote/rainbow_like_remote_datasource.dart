import 'package:dio/dio.dart';
import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/data/dtos/rainbow_like_user_dto.dart';

abstract class RainbowLikeRemoteDataSource {
  Future<List<RainbowLikeUserDto>> fetchRainbowLikeUsersFromUser();
  Future<List<RainbowLikeUserDto>> fetchRainbowLikeUsersToUser();
  Future<void> rainbowlikeUser({
    required String userId,
    required String message,
  });
}

class RainbowLikeRemoteDataSourceImpl implements RainbowLikeRemoteDataSource {
  const RainbowLikeRemoteDataSourceImpl(this._dio);
  final Dio _dio;

  @override
  Future<List<RainbowLikeUserDto>> fetchRainbowLikeUsersFromUser() async {
    try {
      final response = await _dio.get('/api/v1/rainbow-likes/users/received');
      final List data = response.data as List;
      return data
          .map((e) => RainbowLikeUserDto.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }

  @override
  Future<List<RainbowLikeUserDto>> fetchRainbowLikeUsersToUser() async {
    try {
      final response = await _dio.get('/api/v1/rainbow-likes/users/given');
      final List data = response.data as List;
      return data
          .map((e) => RainbowLikeUserDto.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }

  @override
  Future<void> rainbowlikeUser({
    required String userId,
    required String message,
  }) async {
    try {
      final response = await _dio.post(
        '/api/v1/rainbow-likes/$userId',
        data: {
          'message': message,
        },
      );
      if (response.statusCode != 201) {
        throw ApiException.fromResponse(response);
      }
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }
}
