import 'package:dio/dio.dart';
import 'package:reimi_app/core/error/api_exception.dart';

abstract class RainbowLikeRemoteDataSource {
  Future<void> rainbowlikeUser({
    required String userId,
    required String message,
  });
}

class RainbowLikeRemoteDataSourceImpl implements RainbowLikeRemoteDataSource {
  const RainbowLikeRemoteDataSourceImpl(this._dio);
  final Dio _dio;

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
