import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:reimi_app/core/error/auth_exception.dart';
import 'package:reimi_app/domain/value_objects/user_auth_provider.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

abstract class AuthRemoteDataSource {
  Future<User?> signIn(UserAuthProvider provider);
  Future<void> signOut();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImpl(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  @override
  Future<User?> signIn(UserAuthProvider provider) async {
    try {
      switch (provider) {
        case UserAuthProvider.google:
          return await _signInWithGoogle();
        case UserAuthProvider.apple:
          return await _signInWithApple();
      }
    } on AuthException {
      rethrow;
    } catch (_) {
      throw const UnknownAuthException();
    }
  }

  Future<User?> _signInWithGoogle() async {
    try {
      final googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        throw const AuthCancelledException();
      }

      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential =
          await _firebaseAuth.signInWithCredential(credential);

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw _mapFirebaseAuthException(e);
    } on PlatformException catch (e) {
      if (e.code == 'network_error') {
        throw const AuthNetworkException();
      }
      throw FirebaseAuthFailedException(e.message ?? 'Google認証に失敗しました');
    }
  }

  Future<User?> _signInWithApple() async {
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final oauthCredential = OAuthProvider('apple.com').credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
      );

      final userCredential =
          await _firebaseAuth.signInWithCredential(oauthCredential);

      return userCredential.user;
    } on SignInWithAppleAuthorizationException catch (e) {
      if (e.code == AuthorizationErrorCode.canceled) {
        throw const AuthCancelledException();
      }
      throw const FirebaseAuthFailedException('Apple認証に失敗しました');
    } on FirebaseAuthException catch (e) {
      throw _mapFirebaseAuthException(e);
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthFailedException(e.message ?? 'サインアウトに失敗しました');
    }
  }

  // FirebaseAuthException関連(Firebase依存)をRemoteDataSourceに記述
  AuthException _mapFirebaseAuthException(FirebaseAuthException e) {
    switch (e.code) {
      case 'account-exists-with-different-credential':
        return const FirebaseAuthFailedException(
          '別のログイン方法で登録されています',
        );
      case 'invalid-credential':
        return const FirebaseAuthFailedException('認証情報が不正です');
      case 'user-disabled':
        return const FirebaseAuthFailedException('このアカウントは無効化されています');
      case 'network-request-failed':
        return const AuthNetworkException();
      default:
        return FirebaseAuthFailedException(
          e.message ?? '認証に失敗しました',
        );
    }
  }
}
