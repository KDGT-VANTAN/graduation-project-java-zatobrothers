import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/theme/reimi_theme.dart';
import 'package:reimi_app/features/matching/presentation/home_screen.dart';
import 'package:reimi_app/features/splash/presentation/widgets/loading_dots.dart';
import 'package:reimi_app/gen/assets.gen.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});
  static String get routeName => 'splash';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

        // フェードアウト
        isLoading.value = false;
        fadeOutController.forward();
        await Future.delayed(const Duration(milliseconds: 500));

        // ホーム画面へ遷移
        if (context.mounted) {
          context.go(HomeScreen.routeLocation);
        }
      }

      start();
      return null;
    }, []);

    return Scaffold(
      backgroundColor: reimiTheme.colorScheme.primary,
      body: Stack(
        children: [
          // ===== 背景：円弧2つ =====
          Positioned(
            top: -MediaQuery.of(context).size.height * 0.2,
            right: -MediaQuery.of(context).size.width * 0.3,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.width * 1.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width,
                ),
                border: Border.all(
                  color: reimiTheme.colorScheme.secondary.withValues(alpha: 0.15),
                  width: 60,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -MediaQuery.of(context).size.height * 0.25,
            left: -MediaQuery.of(context).size.width * 0.25,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.width * 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width,
                ),
                border: Border.all(
                  color: reimiTheme.colorScheme.tertiary.withValues(alpha: 0.1),
                  width: 50,
                ),
              ),
            ),
          ),
          // ===== メイン =====
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
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 32),
                    width: 128,
                    height: 128,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.3),
                          blurRadius: 20,
                        )
                      ],
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Assets.images.icons.appIcon.image(
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const AnimatedOpacity(
                  opacity: 1,
                  duration: Duration(milliseconds: 800),
                  child: Text(
                    "Reimi",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  "天気で繋がる、出会いのアプリ",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          // ===== ローディング =====
          if (isLoading.value)
            const Positioned(
              bottom: 80,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  LoadingDots(),
                  SizedBox(height: 12),
                  Text(
                    "読み込み中...",
                    style: TextStyle(color: Colors.white60),
                  ),
                ],
              ),
            ),
          // ===== ローディング後 =====
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

// ローディングの3つの点アニメーション
class AnimatedDot extends StatefulWidget {
  final int delay;
  const AnimatedDot({super.key, required this.delay});

  @override
  State<AnimatedDot> createState() => _AnimatedDotState();
}

class _AnimatedDotState extends State<AnimatedDot>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> anim;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    anim = Tween<double>(begin: -5, end: 5).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeInOut),
    );

    Future.delayed(Duration(milliseconds: widget.delay), () {
      controller.repeat(reverse: true);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: anim,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, anim.value),
          child: Opacity(
            opacity: 0.5 + (anim.value.abs() / 10),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 6),
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
        );
      },
    );
  }
}
