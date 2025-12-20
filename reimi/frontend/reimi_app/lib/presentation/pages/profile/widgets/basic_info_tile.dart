import 'package:flutter/material.dart';
import 'package:reimi_app/i18n/strings.g.dart';

class BasicInfoTile extends StatelessWidget {
  const BasicInfoTile({
    super.key,
    required this.title,
    required this.value,
    required this.onTap,
  });
  final String title;
  final String? value;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context).profilePage.placeholder;
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Text(
                title,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: Colors.black87,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                value ?? t.basicInformation,
                textAlign: TextAlign.right,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: value == null
                      ? Colors.black87.withValues(alpha: 0.2)
                      : Colors.black87,
                ),
              ),
            ),
            const SizedBox(width: 8),
            onTap == null
                ? const SizedBox(width: 20)
                : Icon(
                    Icons.chevron_right,
                    size: 22,
                    color: Colors.black87.withValues(alpha: 0.4),
                  ),
          ],
        ),
      ),
    );
  }
}
