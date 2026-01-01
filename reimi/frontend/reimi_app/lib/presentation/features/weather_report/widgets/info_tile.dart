import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    required this.label,
    required this.onTap,
    this.value,
    this.showArrow = true,
  });
  final String label;
  final void Function()? onTap;
  final String? value;
  final bool showArrow;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: theme.textTheme.titleSmall!.copyWith(
                color: Colors.white70,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            if (value != null)
              Flexible(
                flex: 5,
                child: Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      value!,
                      style: theme.textTheme.titleSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            if (showArrow)
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.white54,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
