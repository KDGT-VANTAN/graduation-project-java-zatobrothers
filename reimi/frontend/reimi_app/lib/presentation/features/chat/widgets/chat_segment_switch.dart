import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/domain/value_objects/chat_segment.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/chat/notifiers/chat_segment_notifier.dart';
import 'package:reimi_app/presentation/shared/widgets/segmented_switch.dart';

class ChatSegmentSwitch extends ConsumerWidget {
  const ChatSegmentSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final segment = ref.watch(chatSegmentNotifierProvider);
    final notifier = ref.read(chatSegmentNotifierProvider.notifier);
    final t = Translations.of(context);

    return SegmentedSwitch<ChatSegment>(
      value: segment,
      onChanged: notifier.select,
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
