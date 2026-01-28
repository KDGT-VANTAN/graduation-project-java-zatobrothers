import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/presentation/app/auth/notifiers/auth_notifier.dart';
import 'package:reimi_app/presentation/app/initializer/app_initializer_notifier.dart';
import 'package:reimi_app/presentation/app/session/app_user_state.dart';
import 'package:reimi_app/presentation/app/auth/states/auth_state.dart';
import 'package:reimi_app/presentation/app/session/app_user_state_notifier.dart';
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
      loading: () => const LoadingPage(),
      unauthenticated: () {
        _goAfterFrame(context, SignInPage.routeLocation);
        return const SplashPage();
      },
      authenticated: (_) {
        ref.listen<AsyncValue<AppUserState>>(
          appUserStateNotifierProvider,
          (_, next) {
            next.whenOrNull(
              data: (state) {
                state.when(
                  existingUser: (_) {
                    ref.read(appInitializerNotifierProvider.notifier);
                    _goAfterFrame(context, HomePage.routeLocation);
                  },
                  newUser: () {
                    _goAfterFrame(context, UserGenderPage.routeLocation);
                  },
                  currentUserError: (message) {
                    _goAfterFrame(
                      context,
                      ErrorPage.routeLocation,
                      extra: {'message': message},
                    );
                  },
                );
              },
              error: (e, _) {
                context.go(
                  ErrorPage.routeLocation,
                  extra: {
                    'message': e.toString(),
                    'onRetry': () {
                      ref.invalidate(appUserStateNotifierProvider);
                    },
                  },
                );
              },
            );
          },
        );

        return const LoadingPage();
      },
      failure: (failure) {
        return ErrorPage(
          message: failure.toString(),
          onRetry: () {
            ref.invalidate(authNotifierProvider);
          },
        );
      },
    );
  }

  void _goAfterFrame(
    BuildContext context,
    String location, {
    Object? extra,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.go(location, extra: extra);
    });
  }
}
