import 'package:dio/dio.dart';

abstract class ApiException implements Exception {
  final String code;
  final String message;

  const ApiException({
    required this.code,
    required this.message,
  });

  @override
  String toString() => 'ApiException($code): $message';

  factory ApiException.fromResponse(Response response) {
    final data = response.data;

    if (data is Map<String, dynamic>) {
      final code = data['code'] as String?;
      final message = data['message'] as String?;

      if (code != null && message != null) {
        return _mapByCode(code, message, response.statusCode);
      }
    }

    // 想定外
    return const UnknownApiException(
      message: '予期しないエラーが発生しました',
    );
  }

  // Dioエラー（通信エラー）
  // response がないケースも考慮
  factory ApiException.fromDioError(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      return const NetworkException(
        message: '通信がタイムアウトしました',
      );
    }

    if (e.response != null) {
      return ApiException.fromResponse(e.response!);
    }

    return const UnknownApiException(
      message: '通信エラーが発生しました',
    );
  }

  static ApiException _mapByCode(
    String code,
    String message,
    int? statusCode,
  ) {
    switch (code) {
      // 400
      case 'INVALID_REQUEST':
        return InvalidRequestException(message);

      // 401
      case 'UNAUTHENTICATED':
        return UnauthenticatedException(message);
      
      // 404
      case 'RESOURCE_NOT_FOUND':
        return ResourceNotFoundException(message);

      // 409
      case 'USER_ALREADY_EXISTS':
        return UserAlreadyExistsException(message);

      // 413
      case 'PAYLOAD_TOO_LARGE':
        return PayloadTooLargeException(message);

      // 500
      case 'INTERNAL_SERVER_ERROR':
        return ServerException(message);

      default:
        return UnknownApiException(message: message);
    }
  }
}

// 400:	無効なリクエスト
class InvalidRequestException extends ApiException {
  const InvalidRequestException(String message)
      : super(code: 'INVALID_REQUEST', message: message);
}

// 401: 認証エラー
class UnauthenticatedException extends ApiException {
  const UnauthenticatedException(String message)
      : super(code: 'UNAUTHENTICATED', message: message);
}

// 404: リソース不存在エラー
class ResourceNotFoundException extends ApiException {
  const ResourceNotFoundException(String message)
      : super(code: 'RESOURCE_NOT_FOUND', message: message);
}

// 409: 重複エラー
class UserAlreadyExistsException extends ApiException {
  const UserAlreadyExistsException(String message)
      : super(code: 'USER_ALREADY_EXISTS', message: message);
}

// 413: ファイルアップロードサイズ超過エラー
class PayloadTooLargeException extends ApiException {
  const PayloadTooLargeException(String message)
      : super(code: 'PAYLOAD_TOO_LARGE', message: message);
}

// 500: サーバーエラー
class ServerException extends ApiException {
  const ServerException(String message)
      : super(code: 'INTERNAL_SERVER_ERROR', message: message);
}

// ネットワーク関連
class NetworkException extends ApiException {
  const NetworkException({required super.message}) : super(code: 'NETWORK');
}

// その他
class UnknownApiException extends ApiException {
  const UnknownApiException({required super.message}) : super(code: 'UNKNOWN');
}
