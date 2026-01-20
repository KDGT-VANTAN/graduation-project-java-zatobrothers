import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/app/router/auth_gate.dart';
import 'package:reimi_app/presentation/shared/widgets/arc_background.dart';

class ErrorPage extends StatelessWidget {
  static String get routeName => 'error';
  static String get routeLocation => '/$routeName';
  const ErrorPage({
    super.key,
    required this.message,
    required this.onRetry,
  });
  final String? message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: Stack(
        children: [
          ...ArcBackground.buildArcs(
            context: context,
            topArcColor: theme.colorScheme.secondary,
            bottomArcColor: theme.colorScheme.tertiary,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  const Icon(
                    Icons.cloud_off_rounded,
                    color: Colors.white,
                    size: 96,
                  ),
                  const SizedBox(height: 32),
                  Text(
                    message ?? t.errorPage.defaultMessage,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    t.errorPage.subMessage,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF28A3A),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                      ),
                      onPressed: onRetry ??
                          () {
                            context.go(AuthGate.routeLocation);
                          },
                      child: Text(
                        t.button.retry,
                        style: theme.textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextButton(
                    onPressed: () {
                      context.go(AuthGate.routeLocation);
                    },
                    child: Text(
                      t.button.tryLater,
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
