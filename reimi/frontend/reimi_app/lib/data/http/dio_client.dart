import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/firebase/firebase_auth_provider.dart';
import 'package:reimi_app/core/logger/logger_provider.dart';
import 'package:reimi_app/core/logger/log_long.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_client.g.dart';

@Riverpod(keepAlive: true)
Dio dioClient(Ref ref) {

  final logger = ref.watch(appLoggerProvider);

  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://localhost:8080',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        final user = ref.read(currentUserProvider);

        logger.debug('dioClient_user: $user');

        if (user == null) {
          options.headers.remove('Authorization');
        } else {
          final idToken = await user.getIdToken();
          logLong(idToken ?? 'dioClient_トークンが取得できていません');
          options.headers['Authorization'] = 'Bearer $idToken';
        }

        handler.next(options);
      },
    ),
  );

  dio.interceptors.add(
    LogInterceptor(
      requestBody: true,
      responseBody: true,
    ),
  );

  logger.debug('dioClient_dio: $dio');
  return dio;
}
