import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/pages/splash/components/loading_dots.dart';
import 'package:reimi_app/presentation/shared/pages/auth_gate.dart';
import 'package:reimi_app/presentation/shared/widgets/app_icon.dart';
import 'package:reimi_app/presentation/shared/widgets/arc_background.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});
  static String get routeName => 'splash';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context).splashPage;
    final theme = Theme.of(context);
    final isLoading = useState(true);

    final floatController = useAnimationController(
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    final fadeOutController = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );

    final floatAnimation = Tween<double>(begin: 0, end: -10).animate(
      CurvedAnimation(
        parent: floatController,
        curve: Curves.easeInOut,
      ),
    );

    useEffect(() {
      Future<void> start() async {
        await Future.delayed(const Duration(seconds: 3));
        isLoading.value = false;
        fadeOutController.forward();
        await Future.delayed(const Duration(milliseconds: 500));

        if (context.mounted) {
          context.go(AuthGate.routeLocation);
        }
      }

      start();
      return null;
    }, []);

    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: Stack(
        children: [
          ...ArcBackground.buildArcs(
            context: context,
            topArcColor: theme.colorScheme.secondary,
            bottomArcColor: theme.colorScheme.tertiary,
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedBuilder(
                  animation: floatAnimation,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(0, floatAnimation.value),
                      child: child,
                    );
                  },
                  child: const AppIcon(
                    width: 128,
                    height: 128,
                  ),
                ),
                const SizedBox(height: 32),
                AnimatedOpacity(
                  opacity: 1,
                  duration: const Duration(milliseconds: 800),
                  child: Text(
                    t.appName,
                    style: theme.textTheme.displayLarge!.copyWith(
                      color: Colors.white,
                      fontSize: 48,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  t.title,
                  style: theme.textTheme.displayMedium!.copyWith(
                    color: Colors.white70,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          if (isLoading.value)
            Positioned(
              bottom: 80,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  const LoadingDots(),
                  const SizedBox(height: 16),
                  Text(
                    t.loading,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.white60,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          if (!isLoading.value)
            FadeTransition(
              opacity: fadeOutController,
              child: const ColoredBox(color: Colors.white),
            ),
        ],
      ),
    );
  }
}
