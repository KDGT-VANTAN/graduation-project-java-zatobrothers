import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/presentation/features/chat/enum/chat_segment.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/app/auth/notifiers/app_user_notifier.dart';
import 'package:reimi_app/presentation/features/chat/notifiers/chat_detail_notifier.dart';
import 'package:reimi_app/presentation/features/chat/states/chat_detail_state.dart';
import 'package:reimi_app/presentation/features/chat/widgets/chat_message_list.dart';
import 'package:reimi_app/presentation/features/chat/widgets/chat_segment_switch.dart';
import 'package:reimi_app/presentation/features/chat/widgets/chat_user_profile.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/circle_icon_button.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class ChatDetailPage extends HookConsumerWidget {
  static String get routeName => 'chat_detail';
  static String get routeLocation => '/$routeName';
  const ChatDetailPage({
    super.key,
    required this.otherUserId,
    required this.chatRoomId,
  });
  final String otherUserId;
  final String chatRoomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final theme = Theme.of(context);
    final segment =
        ref.watch(chatDetailNotifierProvider.select((state) => state.segment));
    final notifier = ref.read(chatDetailNotifierProvider.notifier);
    final inputText = ref
        .watch(chatDetailNotifierProvider.select((state) => state.inputText));
    final controller = useTextEditingController(text: inputText);
    final currentUserId = ref.watch(appUserNotifierProvider).value?.id ?? '';
    final userProfile = ref
        .watch(chatDetailNotifierProvider.select((state) => state.userProfile));
    final chatMessages = ref.watch(
        chatDetailNotifierProvider.select((state) => state.chatMessages));
    final isLoadingMessages = ref.watch(
        chatDetailNotifierProvider.select((state) => state.isLoadingMessages));
    final isLoadingProfile = ref.watch(
        chatDetailNotifierProvider.select((state) => state.isLoadingProfile));

    useEffect(() {
      // build 完了後に一度だけ実行
      Future.microtask(() {
        notifier.init(
          chatRoomId: chatRoomId,
          otherUserId: otherUserId,
          currentUserId: currentUserId,
        );
      });

      final subscription = ref.listenManual<ChatDetailState>(
        chatDetailNotifierProvider,
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
                SliverAppBar(
                  pinned: true,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: Text(
                    userProfile?.name ?? '',
                    style: theme.textTheme.titleMedium!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  actions: userProfile == null
                      ? null
                      : [
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: CircleIconButton(
                              icon: const Icon(
                                LineIcons.phone,
                                color: Colors.black54,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                ),
                if (userProfile == null) ...[
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    sliver: SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Text(
                          t.chatDetailPage.nullCase,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),
                ] else ...[
                  const Gap(height: 8),
                  const SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    sliver: SliverToBoxAdapter(
                      child: ChatSegmentSwitch(),
                    ),
                  ),
                  const Gap(height: 16),
                  if (segment == ChatSegment.message) ...[
                    if (isLoadingMessages) ...[
                      const SliverFillRemaining(
                        hasScrollBody: false,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    ] else
                      ...chatMessageList(
                        context: context,
                        chatMessages: chatMessages,
                        currentUserId: currentUserId,
                        mainPhotoUrl: userProfile.mainPhotoUrl,
                      ),
                  ],
                  if (segment == ChatSegment.profile) ...[
                    if (isLoadingProfile) ...[
                      const SliverFillRemaining(
                        hasScrollBody: false,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    ] else
                      ...chatUserProfile(
                        context: context,
                        userProfile: userProfile,
                      ),
                  ],
                  const Gap(height: 24),
                ],
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: userProfile == null
          ? null
          : AnimatedPadding(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOut,
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFDDEFF6),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              border: inputText.isNotEmpty
                                  ? Border.all(
                                      color: theme.colorScheme.primary,
                                      width: 1.4,
                                    )
                                  : null,
                            ),
                            child: TextField(
                              controller: controller,
                              minLines: 1,
                              maxLines: 6,
                              keyboardType: TextInputType.multiline,
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: Colors.black87,
                              ),
                              decoration: InputDecoration(
                                hintText: t.chatDetailPage.placeHolder,
                                hintStyle: theme.textTheme.bodySmall!.copyWith(
                                  color: Colors.black38,
                                ),
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                notifier.updateInput(value);
                              },
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        CircleIconButton(
                          backgroundColor: inputText.isEmpty
                              ? Colors.white
                              : theme.colorScheme.primary,
                          icon: Transform.rotate(
                            angle: -0.785,
                            child: Icon(
                              LineIcons.paperPlane,
                              color: inputText.isEmpty
                                  ? Colors.black38
                                  : Colors.white,
                              size: 26,
                            ),
                          ),
                          onPressed: () async {
                            await notifier.sendMessage();
                            controller.clear();
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
