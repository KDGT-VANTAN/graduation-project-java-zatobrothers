import 'package:reimi_app/core/di/data_providers.dart';
import 'package:reimi_app/core/di/domain_providers.dart';
import 'package:reimi_app/core/firebase/firebase_auth_provider.dart';
import 'package:reimi_app/domain/entities/user_entity.dart';
import 'package:reimi_app/domain/value_objects/user_auth_provider.dart';
import 'package:reimi_app/presentation/states/domain/auth_failure.dart';
import 'package:reimi_app/presentation/states/domain/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    final authStateAsync = ref.watch(authStateChangeProvider);

    return authStateAsync.when(
      data: (user) {
        if (user == null) {
          return const AuthState.unauthenticated();
        }
        final userEntity = UserEntity.fromFirebase(user);
        return AuthState.authenticated(userEntity);
      },
      loading: () => const AuthState.loading(),
      error: (error, stack) => const AuthState.failure(
        AuthFailure.serverError(),
      ),
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
      } else {
        state = AuthState.authenticated(user);
        onSuccess();
      }
    } catch (_) {
      state = const AuthState.failure(AuthFailure.serverError());
    }
  }

  Future<void> signOut({
    required Future<void> Function() onSuccess,
  }) async {
    await ref.read(authRepositoryProvider).signOut();
    state = const AuthState.unauthenticated();
    onSuccess();
  }
}
