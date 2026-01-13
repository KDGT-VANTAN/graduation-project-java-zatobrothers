import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/presentation/features/chat/enum/chat_segment.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/app/auth/notifiers/app_user_notifier.dart';
import 'package:reimi_app/presentation/features/chat/pages/chat_page.dart';
import 'package:reimi_app/presentation/features/chat/notifiers/chat_detail_notifier.dart';
import 'package:reimi_app/presentation/features/chat/notifiers/chat_segment_notifier.dart';
import 'package:reimi_app/presentation/features/chat/widgets/chat_message_list.dart';
import 'package:reimi_app/presentation/features/chat/widgets/chat_segment_switch.dart';
import 'package:reimi_app/presentation/features/chat/widgets/chat_user_profile.dart';
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
    final chatSegment = ref.watch(chatSegmentNotifierProvider);
    final notifier = ref.read(chatDetailNotifierProvider.notifier);
    final inputText = ref
        .watch(chatDetailNotifierProvider.select((state) => state.inputText));
    final controller = useTextEditingController(text: inputText);
    final currentUserId = ref.watch(appUserNotifierProvider).value?.id ?? '';

    useEffect(() {
      // build 完了後に一度だけ実行
      Future.microtask(() {
        notifier.init(
          chatRoomId: chatRoomId,
          otherUserId: otherUserId,
          currentUserId: currentUserId,
        );
      });
      return null;
    }, const []);

    final userProfile = ref
        .watch(chatDetailNotifierProvider.select((state) => state.userProfile));
    final chatMessages = ref.watch(
        chatDetailNotifierProvider.select((state) => state.chatMessages));

    return Scaffold(
      body: BackgroundContainerNoon(
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              if (userProfile == null) ...[
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4),
                      Text(
                        'ユーザーのプロフィールが取得できませんでした。',
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextButton(
                        onPressed: () {
                          context.go(ChatPage.routeLocation);
                        },
                        child: Text(
                          'チャット画面に戻る',
                          style: theme.textTheme.labelLarge!.copyWith(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ] else ...[
                SliverAppBar(
                  pinned: true,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: Text(
                    userProfile.name,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                  ),
                  actions: [
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
                const Gap(height: 8),
                const SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  sliver: SliverToBoxAdapter(
                    child: ChatSegmentSwitch(),
                  ),
                ),
                const Gap(height: 16),
                if (chatSegment == ChatSegment.message) ...[
                  ...chatMessageList(
                    context: context,
                    chatMessages: chatMessages,
                    currentUserId: currentUserId,
                    mainPhotoUrl: userProfile.mainPhotoUrl,
                  ),
                ],
                if (chatSegment == ChatSegment.profile) ...[
                  ...chatUserProfile(
                    context: context,
                    userProfile: userProfile,
                  ),
                ],
              ]
            ],
          ),
        ),
      ),
      bottomNavigationBar: userProfile == null
          ? null
          : Container(
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
    );
  }
}
