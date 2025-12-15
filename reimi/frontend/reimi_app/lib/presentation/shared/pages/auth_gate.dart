import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/presentation/notifiers/domain/auth_notifier.dart';
import 'package:reimi_app/presentation/pages/auth/sign_in_page.dart';
import 'package:reimi_app/presentation/pages/home/home_page.dart';
import 'package:reimi_app/presentation/pages/splash/splash_page.dart';
import 'package:reimi_app/presentation/shared/pages/error_page.dart';
import 'package:reimi_app/presentation/shared/pages/loading_page.dart';
import 'package:reimi_app/presentation/states/domain/auth_state.dart';

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
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.go(HomePage.routeLocation);
        });
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
