import 'package:flutter/material.dart';

class SegmentedSwitch<T> extends StatelessWidget {
  const SegmentedSwitch({
    super.key,
    required this.items,
    required this.value,
    required this.onChanged,
    this.backgroundColor = const Color(0xFFD7EFF6),
  });

  final List<SegmentItem<T>> items;
  final T value;
  final ValueChanged<T> onChanged;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        children: items.map((item) {
          final isSelected = item.value == value;

          return Expanded(
            child: GestureDetector(
              onTap: () => onChanged(item.value),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: isSelected
                      ? theme.colorScheme.primary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Center(
                  child: Text(
                    item.label,
                    style: theme.textTheme.labelLarge!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: isSelected ? Colors.white : Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class SegmentItem<T> {
  const SegmentItem({
    required this.label,
    required this.value,
  });

  final String label;
  final T value;
}
