import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reimi_app/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:reimi_app/features/auth/presentation/widgets/apple_button.dart';
import 'package:reimi_app/features/auth/presentation/widgets/google_button.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/shared/widgets/app_icon.dart';
import 'package:reimi_app/shared/widgets/arc_background.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  static String get routeName => 'sign_in';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context).signIn;
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: Stack(
        children: [
          ...ArcBackground.buildArcs(
            context: context,
            topArcColor: theme.colorScheme.secondary,
            bottomArcColor: theme.colorScheme.tertiary,
            topOffset: 0.2,
            rightOffset: 0.4,
            leftOffset: 0.35,
            bottomOffset: 0.1,
            topArcWidth: 50,
            bottomArcWidth: 50,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  const AppIcon(
                    width: 90,
                    height: 90,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    t.appName,
                    style: theme.textTheme.displayMedium!.copyWith(
                      fontSize: 42,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    t.title,
                    style: theme.textTheme.headlineMedium!.copyWith(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    t.subtitle,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      color: Colors.white70,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  AppleButton(
                    text: t.button.apple,
                    onTap: () {},
                  ),
                  const SizedBox(height: 14),
                  GoogleButton(
                    text: t.button.google,
                    onTap: () {},
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        t.confirmation.account,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        child: Text(
                          t.confirmation.signUp,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                          ),
                        ),
                        onTap: () {
                          context.go(SignUpScreen.routeLocation);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
