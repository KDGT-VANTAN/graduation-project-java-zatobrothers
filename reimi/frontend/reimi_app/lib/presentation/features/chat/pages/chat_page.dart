import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/chat/pages/chat_detail_page.dart';
import 'package:reimi_app/presentation/features/chat/notifiers/chat_room_summaries_notifier.dart';
import 'package:reimi_app/presentation/features/chat/notifiers/unmessaged_match_users_notifier.dart';
import 'package:reimi_app/presentation/features/chat/widgets/chat_room_tile.dart';
import 'package:reimi_app/presentation/features/chat/widgets/unmessaged_match_user_list.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/custom_divider.dart';
import 'package:reimi_app/presentation/shared/widgets/section_title.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class ChatPage extends ConsumerWidget {
  const ChatPage({super.key});
  static String get routeName => 'chat';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final unmessagedMatchUsers =
        ref.watch(unmessagedMatchUsersNotifierProvider).value ?? [];
    final chatRoomSummaries =
        ref.watch(chatRoomSummariesNotifierProvider).value ?? [];
    return Scaffold(
      body: BackgroundContainerNoon(
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              if (unmessagedMatchUsers.isEmpty)
                const SliverToBoxAdapter(child: SizedBox.shrink())
              else ...[
                const Gap(height: 16),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverToBoxAdapter(
                    child: Row(
                      children: [
                        SectionTitle(
                          title: t.chatPage.sectionTitle.matching,
                        ),
                        const SizedBox(width: 8),
                        SubSectionTitle(
                          title: t.chatPage.subSectionTitle.matching,
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(height: 8),
                SliverToBoxAdapter(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      await ref
                          .read(unmessagedMatchUsersNotifierProvider.notifier)
                          .refresh();
                    },
                    child: UnmessagedMatchUserList(
                      users: unmessagedMatchUsers,
                      onTap: (otherUserId) {
                        context.push(
                          ChatDetailPage.routeLocation,
                          extra: {'otherUserId': otherUserId},
                        );
                      },
                    ),
                  ),
                ),
                const Gap(height: 12),
                const SliverToBoxAdapter(
                  child: CustomDivider(),
                ),
              ],
              const Gap(height: 16),
              SliverSectionTitle(
                title: t.chatPage.sectionTitle.messages,
                paddingHorizontal: 16,
              ),
              if (chatRoomSummaries.isEmpty) ...[
                const SliverToBoxAdapter(child: SizedBox.shrink())
              ] else ...[
                const Gap(height: 12),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return ChatRoomTile(
                          chatRoomSummary: chatRoomSummaries[index],
                          onTap: () {
                            context.push(
                              ChatDetailPage.routeLocation,
                              extra: {
                                'otherUserId': chatRoomSummaries[index].userId,
                                'chatRoomId':
                                    chatRoomSummaries[index].chatRoomId,
                              },
                            );
                          },
                        );
                      },
                      childCount: chatRoomSummaries.length,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
