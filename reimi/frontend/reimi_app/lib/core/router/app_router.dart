import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reimi_app/presentation/features/account/account_page.dart';
import 'package:reimi_app/presentation/features/auth/sign_in_page.dart';
import 'package:reimi_app/presentation/features/auth/sign_up_page.dart';
import 'package:reimi_app/presentation/features/chat/chat_detail_page.dart';
import 'package:reimi_app/presentation/features/chat/chat_page.dart';
import 'package:reimi_app/presentation/features/home/home_page.dart';
import 'package:reimi_app/presentation/features/like/like_page.dart';
import 'package:reimi_app/presentation/features/profile/pages/profile_page.dart';
import 'package:reimi_app/presentation/features/profile/pages/profile_detail_page.dart';
import 'package:reimi_app/presentation/features/profile/pages/profile_edit_page.dart';
import 'package:reimi_app/presentation/features/setting/setting_page.dart';
import 'package:reimi_app/presentation/features/splash/splash_page.dart';
import 'package:reimi_app/presentation/features/user_registration/pages/user_address_page.dart';
import 'package:reimi_app/presentation/features/user_registration/pages/user_birthdate_page.dart';
import 'package:reimi_app/presentation/features/user_registration/pages/user_gender_page.dart';
import 'package:reimi_app/presentation/features/user_registration/pages/user_introduction_page.dart';
import 'package:reimi_app/presentation/features/user_registration/pages/user_main_photo_page.dart';
import 'package:reimi_app/presentation/features/user_registration/pages/user_name_page.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/feeling_select_page.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/forecast_select_page.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_report_detail_page.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_report_page.dart';
import 'package:reimi_app/presentation/app/router/auth_gate.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_report_post_page.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_select_page.dart';
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
          final extra = state.extra! as Map<String, Object?>;
          final email = extra['email'] as String;
          return UserGenderPage(email: email);
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
      // ----- home -----
      GoRoute(
        path: ProfileDetailPage.routeLocation,
        name: ProfileDetailPage.routeName,
        builder: (context, state) {
          final extra = state.extra! as Map<String, Object>;
          final userId = extra['userId'] as String;
          return ProfileDetailPage(
            userId: userId,
          );
        },
      ),
      // ----- chat -----
      GoRoute(
        path: ChatDetailPage.routeLocation,
        name: ChatDetailPage.routeName,
        builder: (context, state) {
          final extra = state.extra! as Map<String, Object>;
          final chatRoomId = extra['chatRoomId'] as String;
          final otherUserId = extra['otherUserId'] as String;
          return ChatDetailPage(
            chatRoomId: chatRoomId,
            otherUserId: otherUserId,
          );
        },
      ),
      // ----- weather_report -----
      GoRoute(
        path: WeatherReportPostPage.routeLocation,
        name: WeatherReportPostPage.routeName,
        builder: (context, state) {
          return const WeatherReportPostPage();
        },
      ),
      GoRoute(
        path: WeatherSelectPage.routeLocation,
        name: WeatherSelectPage.routeName,
        builder: (context, state) {
          return const WeatherSelectPage();
        },
      ),
      GoRoute(
        path: FeelingSelectPage.routeLocation,
        name: FeelingSelectPage.routeName,
        builder: (context, state) {
          return const FeelingSelectPage();
        },
      ),
      GoRoute(
        path: ForecastSelectPage.routeLocation,
        name: ForecastSelectPage.routeName,
        builder: (context, state) {
          return const ForecastSelectPage();
        },
      ),
      GoRoute(
        path: WeatherReportDetailPage.routeLocation,
        name: WeatherReportDetailPage.routeName,
        builder: (context, state) {
          final extra = state.extra! as Map<String, Object>;
          final reportId = extra['reportId'] as String;
          return WeatherReportDetailPage(reportId: reportId);
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
      GoRoute(
        path: ProfilePage.routeLocation,
        name: ProfilePage.routeName,
        builder: (context, state) {
          final extra = state.extra! as Map<String, Object?>;
          final userId = extra['userId'] as String;
          return ProfilePage(userId: userId);
        },
      ),
      GoRoute(
        path: ProfileEditPage.routeLocation,
        name: ProfileEditPage.routeName,
        builder: (context, state) {
          final extra = state.extra! as Map<String, Object?>;
          final title = extra['title'] as String;
          final initValue = extra['initValue'] as String?;
          final onSave = extra['onSave'] as void Function(String value);
          final isMultiline = extra['isMultiline'] as bool;
          return ProfileEditPage(
            title: title,
            initValue: initValue,
            onSave: onSave,
            isMultiline: isMultiline,
          );
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
