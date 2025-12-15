import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reimi_app/presentation/pages/account/account_page.dart';
import 'package:reimi_app/presentation/pages/auth/sign_in_page.dart';
import 'package:reimi_app/presentation/pages/auth/sign_up_page.dart';
import 'package:reimi_app/presentation/pages/chat/chat_page.dart';
import 'package:reimi_app/presentation/pages/home/home_page.dart';
import 'package:reimi_app/presentation/pages/like/like_page.dart';
import 'package:reimi_app/presentation/pages/setting/setting_page.dart';
import 'package:reimi_app/presentation/pages/splash/splash_page.dart';
import 'package:reimi_app/presentation/pages/user_registration/user_address_page.dart';
import 'package:reimi_app/presentation/pages/user_registration/user_birthdate_page.dart';
import 'package:reimi_app/presentation/pages/user_registration/user_gender_page.dart';
import 'package:reimi_app/presentation/pages/user_registration/user_introduction_page.dart';
import 'package:reimi_app/presentation/pages/user_registration/user_main_photo_page.dart';
import 'package:reimi_app/presentation/pages/user_registration/user_name_page.dart';
import 'package:reimi_app/presentation/pages/weather_report/weather_report_page.dart';
import 'package:reimi_app/presentation/shared/pages/auth_gate.dart';
import 'package:reimi_app/presentation/shared/pages/error_page.dart';
import 'package:reimi_app/presentation/shared/pages/loading_page.dart';
import 'package:reimi_app/presentation/shared/widgets/bottom_navigation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter goRouter(Ref ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: SplashPage.routeLocation,
    routes: [
      // ----- splash -----
      GoRoute(
        path: SplashPage.routeLocation,
        name: SplashPage.routeName,
        builder: (context, state) {
          return const SplashPage();
        },
      ),
      // ----- auth -----
      GoRoute(
        path: AuthGate.routeLocation,
        name: AuthGate.routeName,
        builder: (context, state) {
          return const AuthGate();
        },
      ),
      GoRoute(
        path: SignUpPage.routeLocation,
        name: SignUpPage.routeName,
        builder: (context, state) {
          return const SignUpPage();
        },
      ),
      GoRoute(
        path: SignInPage.routeLocation,
        name: SignInPage.routeName,
        builder: (context, state) {
          return const SignInPage();
        },
      ),
      // ----- loading -----
      GoRoute(
        path: LoadingPage.routeLocation,
        name: LoadingPage.routeName,
        builder: (context, state) {
          return const LoadingPage();
        },
      ),
      // ----- error -----
      GoRoute(
        path: ErrorPage.routeLocation,
        name: ErrorPage.routeName,
        builder: (context, state) {
          final extra = state.extra! as Map<String, Object?>;
          final message = extra['message'] as String?;
          final onRetry = extra['onRetry'] as VoidCallback?;

          return ErrorPage(
            message: message,
            onRetry: onRetry,
          );
        },
      ),
      // ----- user_registration -----
      GoRoute(
        path: UserGenderPage.routeLocation,
        name: UserGenderPage.routeName,
        builder: (context, state) {
          return const UserGenderPage();
        },
      ),
      GoRoute(
        path: UserBirthdatePage.routeLocation,
        name: UserBirthdatePage.routeName,
        builder: (context, state) {
          return const UserBirthdatePage();
        },
      ),
      GoRoute(
        path: UserAddressPage.routeLocation,
        name: UserAddressPage.routeName,
        builder: (context, state) {
          return const UserAddressPage();
        },
      ),
      GoRoute(
        path: UserNamePage.routeLocation,
        name: UserNamePage.routeName,
        builder: (context, state) {
          return const UserNamePage();
        },
      ),
      GoRoute(
        path: UserIntroductionPage.routeLocation,
        name: UserIntroductionPage.routeName,
        builder: (context, state) {
          return const UserIntroductionPage();
        },
      ),
      GoRoute(
        path: UserMainPhotoPage.routeLocation,
        name: UserMainPhotoPage.routeName,
        builder: (context, state) {
          return const UserMainPhotoPage();
        },
      ),
      // ----- account -----
      GoRoute(
        path: SettingPage.routeLocation,
        name: SettingPage.routeName,
        builder: (context, state) {
          return const SettingPage();
        },
      ),
      // ----- bottom_navigation -----
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            BottomNavigation(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: HomePage.routeLocation,
                builder: (context, state) => const HomePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: LikePage.routeLocation,
                builder: (context, state) => const LikePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: ChatPage.routeLocation,
                builder: (context, state) => const ChatPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: WeatherReportPage.routeLocation,
                builder: (context, state) => const WeatherReportPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AccountPage.routeLocation,
                builder: (context, state) => const AccountPage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
