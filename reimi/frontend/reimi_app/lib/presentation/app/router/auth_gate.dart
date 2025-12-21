import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/presentation/app/auth/notifiers/auth_notifier.dart';
import 'package:reimi_app/presentation/app/auth/notifiers/current_user_notifier.dart';
import 'package:reimi_app/presentation/app/auth/states/auth_state.dart';
import 'package:reimi_app/presentation/features/auth/sign_in_page.dart';
import 'package:reimi_app/presentation/features/home/home_page.dart';
import 'package:reimi_app/presentation/features/splash/splash_page.dart';
import 'package:reimi_app/presentation/features/user_registration/pages/user_gender_page.dart';
import 'package:reimi_app/presentation/shared/pages/error_page.dart';
import 'package:reimi_app/presentation/shared/pages/loading_page.dart';

class AuthGate extends ConsumerWidget {
  const AuthGate({super.key});
  static String get routeName => 'auth_gate';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);

    return authState.when(
      initial: () => const SplashPage(),
      loading: () => const LoadingPage(),
      authenticated: (user) {
        final userAsync = ref.watch(currentUserNotifierProvider);
        userAsync.when(
          data: (userData) {
            if (userData == null) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                context.go(UserGenderPage.routeLocation);
              });
            } else {
              // ユーザー情報がDBに保存されていないので、新規ユーザー扱いになりユーザー初期登録画面に遷移する
              WidgetsBinding.instance.addPostFrameCallback((_) {
                context.go(HomePage.routeLocation);
              });
            }
          },
          error: (e, _) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.go(
                ErrorPage.routeLocation,
                extra: {
                  'message': e.toString(),
                  'onRetry': null,
                },
              );
            });
          },
          loading: () {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.go(LoadingPage.routeLocation);
            });
          },
        );
        return const LoadingPage();
      },
      unauthenticated: () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.go(SignInPage.routeLocation);
        });
        return const LoadingPage();
      },
      failure: (e) => ErrorPage(
        message: e.toString(),
        onRetry: null,
      ),
    );
  }
}
