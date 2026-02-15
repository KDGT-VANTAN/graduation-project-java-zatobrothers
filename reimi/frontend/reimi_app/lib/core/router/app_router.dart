import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reimi_app/presentation/features/account/account_page.dart';
import 'package:reimi_app/presentation/features/auth/sign_in_page.dart';
import 'package:reimi_app/presentation/features/auth/sign_up_page.dart';
import 'package:reimi_app/presentation/features/chat/pages/chat_detail_page.dart';
import 'package:reimi_app/presentation/features/chat/pages/chat_page.dart';
import 'package:reimi_app/presentation/features/go_out/pages/go_out_conditions_page.dart';
import 'package:reimi_app/presentation/features/go_out/pages/go_out_suggestion_page.dart';
import 'package:reimi_app/presentation/features/home/home_page.dart';
import 'package:reimi_app/presentation/features/like/like_page.dart';
import 'package:reimi_app/presentation/features/locale/locale_setting_page.dart';
import 'package:reimi_app/presentation/features/matching/pages/ai_matching_page.dart';
import 'package:reimi_app/presentation/features/matching/pages/matching_completed_page.dart';
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
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_character_detail_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_characters_introduction_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_concept_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_detail_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_judging_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q10_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q11_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q12_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q13_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q14_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q15_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q16_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q1_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q2_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q3_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q4_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q5_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q6_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q7_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q8_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_q9_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_test_result_page.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/feeling_select_page.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/forecast_select_page.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_report_detail_page.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_report_page.dart';
import 'package:reimi_app/presentation/app/router/auth_gate.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_report_post_page.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/my_weather_report_page.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_select_page.dart';
import 'package:reimi_app/presentation/shared/pages/error_page.dart';
import 'package:reimi_app/presentation/shared/pages/loading_page.dart';
import 'package:reimi_app/presentation/shared/widgets/bottom_navigation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

// StatefulShellBranch用のnavigatorKeyを追加
final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Home');
final _likeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Like');
final _chatNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Chat');
final _weatherReportNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'WeatherReport');
final _accountNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Account');

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
      GoRoute(
        path: GoOutConditionsPage.routeLocation,
        name: GoOutConditionsPage.routeName,
        builder: (context, state) {
          return const GoOutConditionsPage();
        },
      ),
      GoRoute(
        path: GoOutSuggestionPage.routeLocation,
        name: GoOutSuggestionPage.routeName,
        builder: (context, state) {
          return const GoOutSuggestionPage();
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
      GoRoute(
        path: MyWeatherReportPage.routeLocation,
        name: MyWeatherReportPage.routeName,
        builder: (context, state) {
          return const MyWeatherReportPage();
        },
      ),
      // ----- account -----
      GoRoute(
        path: ProfilePage.routeLocation,
        name: ProfilePage.routeName,
        builder: (context, state) {
          return const ProfilePage();
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
      GoRoute(
        path: SettingPage.routeLocation,
        name: SettingPage.routeName,
        builder: (context, state) {
          return const SettingPage();
        },
      ),
      GoRoute(
        path: LocaleSettingPage.routeLocation,
        name: LocaleSettingPage.routeName,
        builder: (context, state) {
          return const LocaleSettingPage();
        },
      ),
      // ----- weather_personality -----
      GoRoute(
        path: WeatherPersonalityConceptPage.routeLocation,
        name: WeatherPersonalityConceptPage.routeName,
        builder: (context, state) {
          final extra = state.extra! as Map<String, Object?>;
          final isPreTest = extra['isPreTest'] as bool;
          return WeatherPersonalityConceptPage(isPreTest: isPreTest);
        },
      ),
      GoRoute(
        path: WeatherPersonalityCharactersIntroductionPage.routeLocation,
        name: WeatherPersonalityCharactersIntroductionPage.routeName,
        builder: (context, state) {
          return const WeatherPersonalityCharactersIntroductionPage();
        },
      ),
      GoRoute(
        path: WeatherPersonalityCharacterDetailPage.routeLocation,
        name: WeatherPersonalityCharacterDetailPage.routeName,
        builder: (context, state) {
          final extra = state.extra! as Map<String, Object?>;
          final typeCode = extra['typeCode'] as String?;
          return WeatherPersonalityCharacterDetailPage(typeCode: typeCode);
        },
      ),
      GoRoute(
        path: WeatherPersonalityDetailPage.routeLocation,
        name: WeatherPersonalityDetailPage.routeName,
        builder: (context, state) {
          final extra = state.extra! as Map<String, Object?>;
          final userId = extra['userId'] as String?;
          return WeatherPersonalityDetailPage(userId: userId);
        },
      ),
      GoRoute(
        path: WeatherPersonalityTestQ1Page.routeLocation,
        name: WeatherPersonalityTestQ1Page.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestQ1Page();
        },
      ),
      GoRoute(
        path: WeatherPersonalityTestQ2Page.routeLocation,
        name: WeatherPersonalityTestQ2Page.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestQ2Page();
        },
      ),
      GoRoute(
        path: WeatherPersonalityTestQ3Page.routeLocation,
        name: WeatherPersonalityTestQ3Page.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestQ3Page();
        },
      ),
      GoRoute(
        path: WeatherPersonalityTestQ4Page.routeLocation,
        name: WeatherPersonalityTestQ4Page.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestQ4Page();
        },
      ),
      GoRoute(
        path: WeatherPersonalityTestQ5Page.routeLocation,
        name: WeatherPersonalityTestQ5Page.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestQ5Page();
        },
      ),

      GoRoute(
        path: WeatherPersonalityTestQ6Page.routeLocation,
        name: WeatherPersonalityTestQ6Page.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestQ6Page();
        },
      ),
      GoRoute(
        path: WeatherPersonalityTestQ7Page.routeLocation,
        name: WeatherPersonalityTestQ7Page.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestQ7Page();
        },
      ),
      GoRoute(
        path: WeatherPersonalityTestQ8Page.routeLocation,
        name: WeatherPersonalityTestQ8Page.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestQ8Page();
        },
      ),
      GoRoute(
        path: WeatherPersonalityTestQ9Page.routeLocation,
        name: WeatherPersonalityTestQ9Page.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestQ9Page();
        },
      ),
      GoRoute(
        path: WeatherPersonalityTestQ10Page.routeLocation,
        name: WeatherPersonalityTestQ10Page.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestQ10Page();
        },
      ),

      GoRoute(
        path: WeatherPersonalityTestQ11Page.routeLocation,
        name: WeatherPersonalityTestQ11Page.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestQ11Page();
        },
      ),
      GoRoute(
        path: WeatherPersonalityTestQ12Page.routeLocation,
        name: WeatherPersonalityTestQ12Page.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestQ12Page();
        },
      ),
      GoRoute(
        path: WeatherPersonalityTestQ13Page.routeLocation,
        name: WeatherPersonalityTestQ13Page.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestQ13Page();
        },
      ),
      GoRoute(
        path: WeatherPersonalityTestQ14Page.routeLocation,
        name: WeatherPersonalityTestQ14Page.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestQ14Page();
        },
      ),
      GoRoute(
        path: WeatherPersonalityTestQ15Page.routeLocation,
        name: WeatherPersonalityTestQ15Page.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestQ15Page();
        },
      ),
      GoRoute(
        path: WeatherPersonalityTestQ16Page.routeLocation,
        name: WeatherPersonalityTestQ16Page.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestQ16Page();
        },
      ),
      GoRoute(
        path: WeatherPersonalityTestJudgingPage.routeLocation,
        name: WeatherPersonalityTestJudgingPage.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestJudgingPage();
        },
      ),
      GoRoute(
        path: WeatherPersonalityTestResultPage.routeLocation,
        name: WeatherPersonalityTestResultPage.routeName,
        builder: (context, state) {
          return const WeatherPersonalityTestResultPage();
        },
      ),
      // ----- matching -----
      GoRoute(
        path: MatchingCompletedPage.routeLocation,
        name: MatchingCompletedPage.routeName,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            transitionDuration: const Duration(milliseconds: 480),
            child: const MatchingCompletedPage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final curved = CurvedAnimation(
                parent: animation,
                curve: Curves.easeOutQuart,
              );

              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 1.05),
                  end: Offset.zero,
                ).animate(curved),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        path: AIMatchingPage.routeLocation,
        name: AIMatchingPage.routeName,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            transitionDuration: const Duration(milliseconds: 480),
            child: const AIMatchingPage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final curved = CurvedAnimation(
                parent: animation,
                curve: Curves.easeOutQuart,
              );

              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 1.05),
                  end: Offset.zero,
                ).animate(curved),
                child: child,
              );
            },
          );
        },
      ),
      // ----- bottom_navigation -----
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            BottomNavigation(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            navigatorKey: _homeNavigatorKey,
            routes: [
              GoRoute(
                path: HomePage.routeLocation,
                builder: (context, state) => const HomePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _likeNavigatorKey,
            routes: [
              GoRoute(
                path: LikePage.routeLocation,
                builder: (context, state) => const LikePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _chatNavigatorKey,
            routes: [
              GoRoute(
                path: ChatPage.routeLocation,
                builder: (context, state) => const ChatPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _weatherReportNavigatorKey,
            routes: [
              GoRoute(
                path: WeatherReportPage.routeLocation,
                builder: (context, state) => const WeatherReportPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _accountNavigatorKey,
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
