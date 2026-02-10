import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/like/notifiers/like_notifier.dart';
import 'package:reimi_app/presentation/features/like/states/like_state.dart';
import 'package:reimi_app/presentation/features/like/widgets/like_segment_switch.dart';
import 'package:reimi_app/presentation/features/like/widgets/like_user_card.dart';
import 'package:reimi_app/presentation/features/profile/pages/profile_detail_page.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class LikePage extends HookConsumerWidget {
  const LikePage({super.key});
  static String get routeName => 'like';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final mainController = useAnimationController(
      duration: const Duration(milliseconds: 800),
    )..forward();

    final notifier = ref.read(likeNotifierProvider.notifier);
    final users =
        ref.watch(likeNotifierProvider.select((state) => state.users));
    final isLoading =
        ref.watch(likeNotifierProvider.select((state) => state.isLoading));

    useEffect(() {
      Future.microtask(() {
        notifier.init();
      });

      final subscription = ref.listenManual<LikeState>(
        likeNotifierProvider,
        (prev, next) {
          if (next.errorMessage == null) return;
          AppSnackBar.error(context, next.errorMessage!);
        },
      );

      return subscription.close;
    }, []);

    return Scaffold(
      body: BackgroundContainerNoon(
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: () async {
              await notifier.refresh();
            },
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                const Gap(height: 16),
                const SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverToBoxAdapter(
                    child: LikeSegmentSwitch(),
                  ),
                ),
                const Gap(height: 16),
                if (isLoading) ...[
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ] else if (users.isEmpty) ...[
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Text(
                          t.likePage.isEmptyCase,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  )
                ] else ...[
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return ScaleTransition(
                            scale: Tween(begin: 0.9, end: 1.0).animate(
                              CurvedAnimation(
                                parent: mainController,
                                curve: Curves.easeOutBack,
                              ),
                            ),
                            child: FadeTransition(
                              opacity: mainController,
                              child: LikeUserCard(
                                user: users[index],
                                onTap: () {
                                  context.push(
                                    ProfileDetailPage.routeLocation,
                                    extra: {'userId': users[index].id},
                                  );
                                },
                              ),
                            ),
                          );
                        },
                        childCount: users.length,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 0.85,
                      ),
                    ),
                  ),
                  const Gap(height: 24),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
