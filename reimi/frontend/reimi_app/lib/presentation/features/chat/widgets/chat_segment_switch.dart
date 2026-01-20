import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/presentation/features/chat/enum/chat_segment.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/chat/notifiers/chat_detail_notifier.dart';
import 'package:reimi_app/presentation/shared/widgets/segmented_switch.dart';

class ChatSegmentSwitch extends ConsumerWidget {
  const ChatSegmentSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final segment = ref.watch(chatDetailNotifierProvider.select((state) => state.segment));
    final notifier = ref.read(chatDetailNotifierProvider.notifier);
    final t = Translations.of(context);

    return SegmentedSwitch<ChatSegment>(
      value: segment,
      onChanged: notifier.changeSegment,
      items: [
        SegmentItem(
          label: t.segmentedSwitch.chat.message,
          value: ChatSegment.message,
        ),
        SegmentItem(
          label: t.segmentedSwitch.chat.profile,
          value: ChatSegment.profile,
        ),
      ],
    );
  }
}
