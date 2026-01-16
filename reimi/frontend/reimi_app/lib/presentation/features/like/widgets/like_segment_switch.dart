import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/presentation/features/like/enum/like_segment.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/like/notifiers/like_notifier.dart';
import 'package:reimi_app/presentation/shared/widgets/segmented_switch.dart';

class LikeSegmentSwitch extends ConsumerWidget {
  const LikeSegmentSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final segment = ref.watch(likeNotifierProvider.select((state) => state.segment));
    final notifier = ref.read(likeNotifierProvider.notifier);
    final t = Translations.of(context);

    return SegmentedSwitch<LikeSegment>(
      value: segment,
      onChanged: notifier.changeSegment,
      items: [
        SegmentItem(
          label: t.segmentedSwitch.like.fromUser,
          value: LikeSegment.fromUser,
        ),
        SegmentItem(
          label: t.segmentedSwitch.like.toUser,
          value: LikeSegment.toUser,
        ),
      ],
    );
  }
}
