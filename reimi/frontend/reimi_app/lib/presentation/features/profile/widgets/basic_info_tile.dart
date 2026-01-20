import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';

class BasicInfoTile extends StatelessWidget {
  const BasicInfoTile({
    super.key,
    required this.title,
    required this.value,
    required this.onTap,
    this.isReadOnly = false,
  });
  final String title;
  final String? value;
  final void Function()? onTap;
  final bool isReadOnly;

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
                value ?? t.basicInformation.notSet,
                textAlign: TextAlign.right,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: value == null
                      ? Colors.black87.withValues(alpha: 0.2)
                      : Colors.black87,
                ),
              ),
            ),
            const SizedBox(width: 8),
            isReadOnly
                ? Tooltip(
                    verticalOffset: -48,
                    message: t.basicInformation.toolTip,
                    child: Icon(
                      LineIcons.infoCircle,
                      size: 22,
                      color: Colors.black87.withValues(alpha: 0.4),
                    ),
                  )
                : onTap == null
                    ? const SizedBox.shrink()
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
