import 'package:flutter/material.dart';

class OptionTile extends StatelessWidget {
  const OptionTile({
    super.key,
    required this.label,
    required this.onTap,
  });
  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.6),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          label,
          style: theme.textTheme.titleSmall!.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
