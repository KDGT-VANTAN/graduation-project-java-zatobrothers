import 'package:flutter/material.dart';
import 'package:reimi_app/i18n/strings.g.dart';

class SendButton extends StatelessWidget {
  const SendButton({
    super.key,
    required this.onTap,
    required this.canSubmit,
  });
  final void Function()? onTap;
  final bool canSubmit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: canSubmit ? theme.colorScheme.primary : Colors.white30,
          ),
          color: canSubmit ? theme.colorScheme.primary : null,
        ),
        child: Text(
          t.button.send,
          style: theme.textTheme.labelLarge!.copyWith(
            color: canSubmit ? Colors.white : Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
