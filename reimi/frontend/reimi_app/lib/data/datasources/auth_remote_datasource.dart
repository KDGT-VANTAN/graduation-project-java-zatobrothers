import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:reimi_app/domain/entities/user_entity.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';
import 'package:reimi_app/domain/value_objects/user_auth_provider.dart';
import 'package:reimi_app/domain/value_objects/user_status.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

abstract class AuthRemoteDataSource {
  Future<UserEntity?> signIn(UserAuthProvider provider);
  Future<UserEntity?> getCurrentUser();
  Future<void> signOut();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImpl(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  @override
  Future<UserEntity?> signIn(UserAuthProvider provider) async {
    switch (provider) {
      case UserAuthProvider.google:
        return _signInWithGoogle();
      case UserAuthProvider.apple:
        return _signInWithApple();
    }
  }

  @override
  Future<UserEntity?> getCurrentUser() async {
    final user = _firebaseAuth.currentUser;
    if (user == null) return null;
    return _toEntity(user);
  }

  @override
  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }

  Future<UserEntity?> _signInWithGoogle() async {
    final googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) {
      return null;
    }

    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final userCredential = await _firebaseAuth.signInWithCredential(credential);
    final user = userCredential.user;
    if (user == null) return null;

    return _toEntity(user);
  }

  Future<UserEntity?> _signInWithApple() async {
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
    final user = userCredential.user;
    if (user == null) return null;
    return _toEntity(user);
  }

  Future<UserEntity> _toEntity(User user) async {
    // 仮実装
    return UserEntity(
      id: '',
      firebaseUid: user.uid,
      name: user.displayName ?? '',
      gender: Gender.man,
      birthDate: DateTime.now(),
      address: Address.hokkaido,
      mainPhotoUrl: user.photoURL ?? '',
      email: user.email ?? '',
      signupDate: DateTime.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      status: UserStatus.active,
    );
  }
}
