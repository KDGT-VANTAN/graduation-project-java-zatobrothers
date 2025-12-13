import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/domain/value_objects/user_auth_provider.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/notifiers/domain/auth_notifier.dart';
import 'package:reimi_app/presentation/pages/auth/components/apple_button.dart';
import 'package:reimi_app/presentation/pages/auth/components/google_button.dart';
import 'package:reimi_app/presentation/pages/auth/sign_in_page.dart';
import 'package:reimi_app/core/utils/url_launcher_util.dart';
import 'package:reimi_app/presentation/shared/pages/auth_gate.dart';
import 'package:reimi_app/presentation/shared/widgets/app_icon.dart';
import 'package:reimi_app/presentation/shared/widgets/arc_background.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({super.key});
  static String get routeName => 'sign_up';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context).signUp;
    final theme = Theme.of(context);
    final notifier = ref.read(authNotifierProvider.notifier);

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
                    label: t.button.apple,
                    onTap: () async {
                      await notifier.signIn(
                        provider: UserAuthProvider.apple,
                        onSuccess: () async {
                          context.go(AuthGate.routeLocation);
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 14),
                  GoogleButton(
                    label: t.button.google,
                    onTap: () async {
                      await notifier.signIn(
                        provider: UserAuthProvider.google,
                        onSuccess: () async {
                          context.go(AuthGate.routeLocation);
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: Colors.white,
                        fontSize: 11,
                      ),
                      children: [
                        TextSpan(text: t.consent.consentText1),
                        TextSpan(
                          text: t.consent.tos,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: Colors.white,
                            decorationColor: Colors.white,
                            decoration: TextDecoration.underline,
                            fontSize: 11,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchURL(urlString: '', context: context);
                            },
                        ),
                        TextSpan(text: t.consent.consentText2),
                        TextSpan(
                          text: t.consent.pp,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: Colors.white,
                            decorationColor: Colors.white,
                            decoration: TextDecoration.underline,
                            fontSize: 11,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchURL(urlString: '', context: context);
                            },
                        ),
                        const TextSpan(text: '\n'),
                        TextSpan(text: t.consent.consentText3),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        t.confirmation.account,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        child: Text(
                          t.confirmation.signIn,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                          ),
                        ),
                        onTap: () {
                          context.go(SignInPage.routeLocation);
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
