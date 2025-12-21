import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/domain/value_objects/sort_type.dart';
import 'package:reimi_app/presentation/features/home/notifiers/home_users_notifier.dart';
import 'package:reimi_app/presentation/features/home/widgets/refine_search_user_bottom_sheet.dart';
import 'package:reimi_app/presentation/features/home/widgets/sort_user_bottom_sheet.dart';
import 'package:reimi_app/presentation/shared/widgets/circle_icon_button.dart';
import 'package:reimi_app/presentation/features/home/widgets/user_card.dart';
import 'package:reimi_app/presentation/features/profile/pages/profile_detail_page.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  static String get routeName => 'home';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersAsync = ref.watch(homeUsersNotifierProvider);
    return Scaffold(
      body: BackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: usersAsync.when(
              data: (users) {
                if (users == null) {
                  return const Text('現在、表示できるユーザーがいません。');
                }
                return CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      floating: true,
                      snap: true,
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleIconButton(
                              icon: const Icon(LineIcons.search),
                              onPressed: () {
                                refineSearchUserBottomSheet(
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
                                sortUserBottomSheet(
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
                    const Gap(height: 12),
                    SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return UserCard(
                            user: users[index],
                            onTap: () {
                              context.push(
                                ProfileDetailPage.routeLocation,
                                extra: {'userId': users[index].userId},
                              );
                            },
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
                    const Gap(height: 24),
                  ],
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text('Error: $e')),
            ),
          ),
        ),
      ),
    );
  }
}
