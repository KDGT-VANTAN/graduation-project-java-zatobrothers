import 'package:reimi_app/core/error/auth_exception.dart';
import 'package:reimi_app/presentation/app/auth/states/auth_failure.dart';

extension AuthExceptionMapper on AuthException {
  AuthFailure toFailure() {
    if (this is AuthCancelledException) {
      return const AuthFailure.cancelledByUser();
    }

    if (this is FirebaseAuthFailedException) {
      return AuthFailure.firebaseAuthError(
        message: message,
      );
    }

    if (this is AuthNetworkException) {
      return const AuthFailure.network();
    }

    if (this is UnknownAuthException) {
      return AuthFailure.unknown(
        message: message,
      );
    }

    // 将来拡張用（理論上ここには来ない）
    return const AuthFailure.unknown();
  }
}
