import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/domain/value_objects/like_segment.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/like/notifiers/like_segment_notifier.dart';

class LikeSegmentSwitch extends HookConsumerWidget {
  const LikeSegmentSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final segment = ref.watch(likeSegmentNotifierProvider);
    final notifier = ref.read(likeSegmentNotifierProvider.notifier);
    final theme = Theme.of(context);
    final t = Translations.of(context);

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color(0xFFD7EFF6),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        children: [
          buildItem(
            label: t.likePage.segment.fromUser,
            isSelected: segment == LikeSegment.fromUser,
            onTap: () => notifier.select(LikeSegment.fromUser),
            theme: theme,
          ),
          buildItem(
            label: t.likePage.segment.toUser,
            isSelected: segment == LikeSegment.toUser,
            onTap: () => notifier.select(LikeSegment.toUser),
            theme: theme,
          ),
        ],
      ),
    );
  }

  Widget buildItem({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
    required ThemeData theme,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? theme.colorScheme.primary : Colors.transparent,
            borderRadius: BorderRadius.circular(28),
          ),
          child: Center(
            child: Text(
              label,
              style: theme.textTheme.labelLarge!.copyWith(
                fontSize: 13,
                color: isSelected ? Colors.white : Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
