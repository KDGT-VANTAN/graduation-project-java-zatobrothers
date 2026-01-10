import 'package:reimi_app/core/di/data_providers.dart';
import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/core/error/auth_exception.dart';
import 'package:reimi_app/core/extensions/error/auth_exception_mapper.dart';
import 'package:reimi_app/core/firebase/firebase_auth_provider.dart';
import 'package:reimi_app/domain/value_objects/user_auth_provider.dart';
import 'package:reimi_app/presentation/app/auth/states/auth_failure.dart';
import 'package:reimi_app/presentation/app/auth/states/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    final authStateAsync = ref.watch(authStateChangesProvider);

    return authStateAsync.when(
      data: (user) {
        if (user == null) {
          return const AuthState.unauthenticated();
        }
        return AuthState.authenticated(user);
      },
      loading: () => const AuthState.loading(),
      error: (error, stack) =>
          const AuthState.failure(AuthFailure.cancelledByUser()),
    );
  }

  Future<void> signIn({
    required UserAuthProvider provider,
    required Future<void> Function() onSuccess,
  }) async {
    state = const AuthState.loading();
    try {
      final user =
          await ref.read(signInWithProviderUseCaseProvider).call(provider);

      if (user == null) {
        state = const AuthState.failure(AuthFailure.cancelledByUser());
        return;
      }

      state = AuthState.authenticated(user);
      await onSuccess();
    } on AuthException catch (e) {
      state = AuthState.failure(e.toFailure());
    } catch (e) {
      state = AuthState.failure(AuthFailure.unknown(message: e.toString()));
    }
  }

  Future<void> signOut({
    required Future<void> Function() onSuccess,
  }) async {
    try {
      await ref.read(authRepositoryProvider).signOut();
      state = const AuthState.unauthenticated();
      onSuccess();
    } on AuthException catch (e) {
      state = AuthState.failure(e.toFailure());
    }
  }
}
