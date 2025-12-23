import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/presentation/features/like/notifiers/like_users_notifier.dart';
import 'package:reimi_app/presentation/features/like/widgets/like_segment_switch.dart';
import 'package:reimi_app/presentation/features/like/widgets/small_user_card.dart';
import 'package:reimi_app/presentation/features/profile/pages/profile_detail_page.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container.dart';

class LikePage extends ConsumerWidget {
  const LikePage({super.key});
  static String get routeName => 'like';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersAsync = ref.watch(likeUsersNotifierProvider);
    return Scaffold(
      body: BackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                const SizedBox(height: 16),
                const LikeSegmentSwitch(),
                const SizedBox(height: 16),
                usersAsync.when(
                  data: (users) {
                    if (users == null) {
                      return const Text('現在、表示できるユーザーがいません。');
                    } else if (users.isEmpty) {
                      return const Text('新しい出会いをみつけましょう！');
                    }
                    return Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: 0.85,
                        children: [
                          ...users.map((user) {
                            return SmallUserCard(
                              user: user,
                              onTap: () {
                                context.push(
                                  ProfileDetailPage.routeLocation,
                                  extra: {'userId': user.userId},
                                );
                              },
                            );
                          }),
                        ],
                      ),
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (e, _) => Center(child: Text('Error: $e')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
