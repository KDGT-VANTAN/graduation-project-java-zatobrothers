import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/chat/notifiers/chat_notifier.dart';
import 'package:reimi_app/presentation/features/chat/pages/chat_detail_page.dart';
import 'package:reimi_app/presentation/features/chat/states/chat_state.dart';
import 'package:reimi_app/presentation/features/chat/widgets/chat_room_tile.dart';
import 'package:reimi_app/presentation/features/chat/widgets/unmessaged_match_user_list.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/custom_divider.dart';
import 'package:reimi_app/presentation/shared/widgets/section_title.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class ChatPage extends HookConsumerWidget {
  const ChatPage({super.key});
  static String get routeName => 'chat';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final theme = Theme.of(context);
    final notifier = ref.read(chatNotifierProvider.notifier);
    final unmessagedMatchUsers = ref.watch(
        chatNotifierProvider.select((state) => state.unmessagedMatchUsers));
    final chatRoomSummaries = ref
        .watch(chatNotifierProvider.select((state) => state.chatRoomSummaries));
    final isLoadingUsers =
        ref.watch(chatNotifierProvider.select((state) => state.isLoadingUsers));
    final isLoadingSummaries = ref.watch(
        chatNotifierProvider.select((state) => state.isLoadingSummaries));

    final mainController = useAnimationController(
      duration: const Duration(milliseconds: 600),
    )..forward();

    final subController = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );

    useEffect(() {
      Future.microtask(() {
        notifier.init();
      });
      final timer = Timer(
        const Duration(milliseconds: 400),
        () => subController.forward(),
      );

      final subscription = ref.listenManual<ChatState>(
        chatNotifierProvider,
        (prev, next) {
          if (next.errorMessage == null) return;
          AppSnackBar.error(context, next.errorMessage!);
        },
      );

      return () {
        timer.cancel;
        subscription.close;
      };
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
                if (isLoadingUsers) ...[
                  const SliverToBoxAdapter(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                ] else if (unmessagedMatchUsers.isEmpty)
                  const SliverToBoxAdapter(
                    child: SizedBox.shrink(),
                  )
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
                    child: SlideTransition(
                      position: Tween(
                        begin: const Offset(0.15, 0),
                        end: Offset.zero,
                      ).animate(
                        CurvedAnimation(
                          parent: mainController,
                          curve: Curves.easeOut,
                        ),
                      ),
                      child: FadeTransition(
                        opacity: mainController,
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
                if (isLoadingSummaries) ...[
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                ] else if (chatRoomSummaries.isEmpty) ...[
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Text(
                          t.chatPage.isEmptyCase,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),
                ] else ...[
                  const Gap(height: 12),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return SlideTransition(
                            position: Tween(
                              begin: const Offset(0, 0.15),
                              end: Offset.zero,
                            ).animate(
                              CurvedAnimation(
                                parent: subController,
                                curve: Curves.easeOut,
                              ),
                            ),
                            child: FadeTransition(
                              opacity: subController,
                              child: ChatRoomTile(
                                chatRoomSummary: chatRoomSummaries[index],
                                onTap: () {
                                  context.push(
                                    ChatDetailPage.routeLocation,
                                    extra: {
                                      'otherUserId':
                                          chatRoomSummaries[index].userId,
                                      'chatRoomId':
                                          chatRoomSummaries[index].chatRoomId,
                                    },
                                  );
                                },
                              ),
                            ),
                          );
                        },
                        childCount: chatRoomSummaries.length,
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
