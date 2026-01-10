sealed class AuthException implements Exception {
  final String message;
  const AuthException(this.message);
}

/// ユーザー操作によるキャンセル
class AuthCancelledException extends AuthException {
  const AuthCancelledException() : super('認証がキャンセルされました');
}

/// Firebase 認証失敗
class FirebaseAuthFailedException extends AuthException {
  const FirebaseAuthFailedException(super.message);
}

/// ネットワークエラーなど
class AuthNetworkException extends AuthException {
  const AuthNetworkException() : super('ネットワークエラーが発生しました');
}

/// 想定外
class UnknownAuthException extends AuthException {
  const UnknownAuthException() : super('不明な認証エラーが発生しました');
}
