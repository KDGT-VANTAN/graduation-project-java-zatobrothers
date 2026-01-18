import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/chat/pages/chat_page.dart';
import 'package:reimi_app/presentation/features/matching/notifiers/matching_notifier.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';

class MatchingCompletedPage extends HookConsumerWidget {
  const MatchingCompletedPage({super.key});
  static String get routeName => 'matching_completed';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    final notifier = ref.read(matchingNotifierProvider.notifier);
    final users =
        ref.watch(matchingNotifierProvider.select((state) => state.users));
    final isLoading =
        ref.watch(matchingNotifierProvider.select((state) => state.isLoading));

    final titleController = useAnimationController(
      duration: const Duration(milliseconds: 600),
    )..forward();

    final archController = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );

    final avatarController = useAnimationController(
      duration: const Duration(milliseconds: 650),
    );

    final ctaController = useAnimationController(
      duration: const Duration(milliseconds: 550),
    );

    final titleSlide = Tween(
      begin: const Offset(0, -0.2),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: titleController,
        curve: Curves.easeOutCubic,
      ),
    );

    final archFade = CurvedAnimation(
      parent: archController,
      curve: Curves.easeOut,
    );

    final archScale = Tween(begin: 0.85, end: 1.0).animate(
      CurvedAnimation(
        parent: archController,
        curve: Curves.easeOutBack,
      ),
    );

    final leftAvatarSlide = Tween<Offset>(
      begin: const Offset(-0.25, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: avatarController,
        curve: const Interval(
          0.0,
          0.6,
          curve: Curves.easeOutBack,
        ),
      ),
    );

    final rightAvatarSlide = Tween<Offset>(
      begin: const Offset(0.25, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: avatarController,
        curve: const Interval(
          0.0,
          0.7,
          curve: Curves.easeOutBack,
        ),
      ),
    );

    final messageSlide = Tween(
      begin: const Offset(0, 0.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: avatarController,
        curve: const Interval(
          0.35,
          1.0,
          curve: Curves.easeOut,
        ),
      ),
    );

    final buttonSlide = Tween(
      begin: const Offset(0, 0.6),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: ctaController,
        curve: Curves.easeOutCubic,
      ),
    );

    useEffect(() {
      Future.microtask(() {
        notifier.init();
      });
      final secCtrltimer = Timer(
        const Duration(milliseconds: 350),
        () => archController.forward(),
      );
      final thirdCtrltimer = Timer(
        const Duration(milliseconds: 520),
        () => avatarController.forward(),
      );
      final fourthCtrltimer = Timer(
        const Duration(milliseconds: 850),
        () => ctaController.forward(),
      );

      return () {
        secCtrltimer.cancel();
        thirdCtrltimer.cancel();
        fourthCtrltimer.cancel();
      };
    }, []);

    return Scaffold(
      body: BackgroundContainerNoon(
        child: SafeArea(
          child: Stack(
            children: [
              if (isLoading) ...[
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: CircularProgressIndicator(),
                    ),
                  ],
                )
              ] else if (users == null) ...[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        t.matchingCompletedPage.nullCase,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                )
              ] else ...[
                Column(
                  children: [
                    const Spacer(flex: 1),
                    SlideTransition(
                      position: titleSlide,
                      child: FadeTransition(
                        opacity: titleController,
                        child: Column(
                          children: [
                            Text(
                              t.matchingCompletedPage.title,
                              style: theme.textTheme.headlineMedium!.copyWith(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF1F2A37),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              t.matchingCompletedPage
                                  .subTitle(name: users.otherUserName),
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineSmall!.copyWith(
                                fontSize: 15,
                                color: const Color(0xFF374151),
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 36),
                    SizedBox(
                      height: 220,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 48,
                            child: FadeTransition(
                              opacity: archFade,
                              child: ScaleTransition(
                                scale: archScale,
                                child: CustomPaint(
                                  size: const Size(260, 120),
                                  painter: ArchPainter(),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 30,
                            child: SlideTransition(
                              position: leftAvatarSlide,
                              child: FadeTransition(
                                opacity: avatarController,
                                child: _AvatarWithPlatform(
                                  mainPhotoUrl: users.currentUserMainPhotoUrl,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 30,
                            child: SlideTransition(
                              position: rightAvatarSlide,
                              child: FadeTransition(
                                opacity: avatarController,
                                child: _AvatarWithPlatform(
                                  mainPhotoUrl: users.otherUserMainPhotoUrl,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    SlideTransition(
                      position: messageSlide,
                      child: FadeTransition(
                        opacity: avatarController,
                        child: Text(
                          t.matchingCompletedPage.message,
                          style: theme.textTheme.headlineSmall!.copyWith(
                            fontSize: 14,
                            color: const Color(0xFF374151),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 36),
                    SlideTransition(
                      position: buttonSlide,
                      child: FadeTransition(
                        opacity: ctaController,
                        child: _CTAButton(
                          label: t.button.goTochatPage,
                          onTap: () {
                            context.go(ChatPage.routeLocation);
                          },
                        ),
                      ),
                    ),
                    const Spacer(flex: 1),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class ArchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = const LinearGradient(
        colors: [
          Color(0xFFE87A5D),
          Color(0xFFF4C563),
          Color(0xFF9BCF8C),
          Color(0xFF5FA8A3),
          Color(0xFF7A8CD6),
          Color(0xFFF4C563),
          Color(0xFFE87A5D),
        ],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20
      ..strokeCap = StrokeCap.round;

    final path = Path()
      ..moveTo(0, size.height)
      ..quadraticBezierTo(
        size.width / 2,
        -size.height / 2,
        size.width,
        size.height,
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _AvatarWithPlatform extends StatelessWidget {
  const _AvatarWithPlatform({required this.mainPhotoUrl});

  final String mainPhotoUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 180,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 36,
            child: Container(
              width: 110,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.86),
                borderRadius: const BorderRadius.all(
                  Radius.elliptical(110, 50),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 44,
            child: Container(
              width: 110,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.86),
                borderRadius: const BorderRadius.all(
                  Radius.elliptical(110, 45),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.08),
                    blurRadius: 10,
                    spreadRadius: -2,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 56,
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                color: const Color(0xFF7EC6D3),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 4),
              ),
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white.withValues(alpha: 0.9),
                backgroundImage: mainPhotoUrl.toImageProvider(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CTAButton extends StatelessWidget {
  const _CTAButton({
    required this.label,
    required this.onTap,
  });

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 240,
        height: 52,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFF48B6A),
              Color(0xFFF7C97F),
              Color(0xFF7FB8A6),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.15),
              blurRadius: 10,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Text(
          label,
          style: theme.textTheme.labelLarge!.copyWith(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
