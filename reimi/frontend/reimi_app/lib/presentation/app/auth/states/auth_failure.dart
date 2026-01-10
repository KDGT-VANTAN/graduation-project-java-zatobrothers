import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';

part 'auth_failure.freezed.dart';

@freezed
sealed class AuthFailure with _$AuthFailure {
  const AuthFailure._();

  /// ユーザーがキャンセル
  const factory AuthFailure.cancelledByUser({
    @Default('認証がキャンセルされました') String message,
  }) = _CancelledByUser;

  /// Firebase 認証エラー
  const factory AuthFailure.firebaseAuthError({
    required String message,
  }) = _FirebaseAuthError;

  /// ネットワークエラー
  const factory AuthFailure.network({
    @Default('ネットワークエラーが発生しました') String message,
  }) = _Network;

  /// 想定外
  const factory AuthFailure.unknown({
    @Default('予期しないエラーが発生しました') String message,
  }) = _Unknown;

  /// SnackBar の見た目を UI に伝える
  SnackBarType get snackBarType => when(
        cancelledByUser: (_) => SnackBarType.warning,
        firebaseAuthError: (_) => SnackBarType.error,
        network: (_) => SnackBarType.error,
        unknown: (_) => SnackBarType.error,
      );
}
