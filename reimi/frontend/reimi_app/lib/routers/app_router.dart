import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reimi_app/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:reimi_app/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:reimi_app/features/chat/presentation/chat_screen.dart';
import 'package:reimi_app/features/like/presentation/like_screen.dart';
import 'package:reimi_app/features/matching/presentation/home_screen.dart';
import 'package:reimi_app/features/profile/presentation/account_screen.dart';
import 'package:reimi_app/features/splash/presentation/splash_screen.dart';
import 'package:reimi_app/features/weather_report/presentation/weather_report_screen.dart';
import 'package:reimi_app/shared/widgets/bottom_navigation.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: true,
      initialLocation: SplashScreen.routeLocation,
      routes: [
        GoRoute(
          path: SplashScreen.routeLocation,
          name: SplashScreen.routeName,
          builder: (context, state) {
            return const SplashScreen();
          },
        ),
        GoRoute(
          path: SignUpScreen.routeLocation,
          name: SignUpScreen.routeName,
          builder: (context, state) {
            return const SignUpScreen();
          },
        ),
        GoRoute(
          path: SignInScreen.routeLocation,
          name: SignInScreen.routeName,
          builder: (context, state) {
            return const SignInScreen();
          },
        ),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) =>
              BottomNavigation(navigationShell: navigationShell),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                    path: HomeScreen.routeLocation,
                    builder: (context, state) => const HomeScreen()),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                    path: LikeScreen.routeLocation,
                    builder: (context, state) => const LikeScreen()),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                    path: ChatScreen.routeLocation,
                    builder: (context, state) => const ChatScreen()),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                    path: WeatherReportScreen.routeLocation,
                    builder: (context, state) => const WeatherReportScreen()),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                    path: AccountScreen.routeLocation,
                    builder: (context, state) => const AccountScreen()),
              ],
            ),
          ],
        ),
      ],
    );
  },
);
