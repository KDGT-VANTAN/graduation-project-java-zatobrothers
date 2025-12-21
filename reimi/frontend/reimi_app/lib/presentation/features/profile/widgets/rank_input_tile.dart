import 'package:flutter/material.dart';

class RankInputTile extends StatelessWidget {
  const RankInputTile({
    super.key,
    required this.rank,
    required this.hint,
    required this.value,
    required this.onTap,
    required this.onDelete,
  });

  final int rank;
  final String hint;
  final String? value;
  final void Function()? onTap;
  final void Function()? onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Text(
              '$rank.',
              style: theme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: value == null || value!.isEmpty
                  ? Text(
                      hint,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: Colors.black87.withValues(alpha: 0.2),
                      ),
                    )
                  : Text(
                      value!,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: Colors.black87,
                      ),
                    ),
            ),
            if (value != null && value!.isNotEmpty && onDelete != null)
              GestureDetector(
                onTap: onDelete,
                child: const Icon(
                  Icons.close,
                  size: 20,
                  color: Colors.black54,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
