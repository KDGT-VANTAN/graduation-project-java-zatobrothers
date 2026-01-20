import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/home/enum/sort_type.dart';
import 'package:reimi_app/presentation/features/home/notifiers/home_notifier.dart';
import 'package:reimi_app/presentation/features/home/states/home_state.dart';
import 'package:reimi_app/presentation/features/home/widgets/show_refine_search_user_modal_sheet.dart';
import 'package:reimi_app/presentation/features/home/widgets/show_sort_user_modal_sheet.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/circle_icon_button.dart';
import 'package:reimi_app/presentation/features/home/widgets/user_card.dart';
import 'package:reimi_app/presentation/features/profile/pages/profile_detail_page.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});
  static String get routeName => 'home';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final mainController = useAnimationController(
      duration: const Duration(milliseconds: 800),
    )..forward();

    final notifier = ref.read(homeNotifierProvider.notifier);
    final users =
        ref.watch(homeNotifierProvider.select((state) => state.users));
    final isLoading =
        ref.watch(homeNotifierProvider.select((state) => state.isLoading));

    useEffect(() {
      Future.microtask(() {
        notifier.init();
      });

      final subscription = ref.listenManual<HomeState>(
        homeNotifierProvider,
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
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  sliver: SliverAppBar(
                    floating: true,
                    snap: true,
                    actions: [
                      Row(
                        children: [
                          CircleIconButton(
                            icon: const Icon(LineIcons.search),
                            onPressed: () {
                              showRefineSearchUserModalSheet(
                                context: context,
                                onApply: () {},
                                onClear: () {},
                              );
                            },
                          ),
                          const SizedBox(width: 16),
                          CircleIconButton(
                            icon: const Icon(LineIcons.horizontalSliders),
                            onPressed: () {
                              showSortUserModalSheet(
                                context: context,
                                initialValue: SortType.login,
                                onApply: (SortType p1) {},
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                ),
                if (isLoading) ...[
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ] else if (users.isEmpty) ...[
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    sliver: SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Text(
                          t.homePage.isEmptyCase,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),
                ] else ...[
                  const Gap(height: 12),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
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
                              child: UserCard(
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
                        childAspectRatio: 0.72,
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
