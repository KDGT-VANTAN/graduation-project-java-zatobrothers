import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:reimi_app/domain/value_objects/user_auth_provider.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

abstract class AuthRemoteDataSource {
  Future<User?> signIn(UserAuthProvider provider);
  Future<User?> getCurrentUser();
  Future<void> signOut();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImpl(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  @override
  Future<User?> signIn(UserAuthProvider provider) async {
    switch (provider) {
      case UserAuthProvider.google:
        return _signInWithGoogle();
      case UserAuthProvider.apple:
        return _signInWithApple();
    }
  }

  @override
  Future<User?> getCurrentUser() async {
    final user = _firebaseAuth.currentUser;
    if (user == null) return null;
    return user;
  }

  @override
  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }

  Future<User?> _signInWithGoogle() async {
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
    return user;
  }

  Future<User?> _signInWithApple() async {
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
    return user;
  }
}
