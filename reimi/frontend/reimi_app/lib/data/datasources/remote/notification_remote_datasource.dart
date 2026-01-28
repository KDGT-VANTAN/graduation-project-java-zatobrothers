import 'package:dio/dio.dart';
import 'package:reimi_app/core/error/api_exception.dart';

abstract class NotificationRemoteDataSource {
  Future<void> registerDeviceToken(String token);
}

class NotificationRemoteDataSourceImpl implements NotificationRemoteDataSource {
  const NotificationRemoteDataSourceImpl(this._dio);
  final Dio _dio;

  @override
  Future<void> registerDeviceToken(String token) async {
    try {
      final response = await _dio.post(
        '/api/v1/users/device-tokens',
        data: {
          'token': token,
        },
        options: Options(
          validateStatus: (_) => true,
        ),
      );
      if (response.statusCode != 200) {
        throw ApiException.fromResponse(response);
      }
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }
}
