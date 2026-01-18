import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';

Future<void> customConfirmationDialog({
  required BuildContext context,
  required String title,
  required String contentText,
  required String buttonLabel,
  required VoidCallback onPressed,
  required Color accentColor,
  VoidCallback? onCancel,
}) async {
  return showDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.black.withValues(alpha: 0.6),
    builder: (_) {
      final theme = Theme.of(context);
      final t = Translations.of(context).button;
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          insetPadding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1A2F34),
                  ),
                ),
                const SizedBox(height: 20),
                Flexible(
                  child: Text(
                    contentText,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: const Color(0xFF1A2F34),
                    ),
                  ),
                ),
                const SizedBox(height: 28),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 56,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFFE6E8EC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            onCancel != null ? onCancel() : null;
                          },
                          child: Text(
                            t.cancel,
                            style: theme.textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1A2F34),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: SizedBox(
                        height: 56,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: BorderSide(
                                color: accentColor,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            onPressed();
                          },
                          child: Text(
                            buttonLabel,
                            style: theme.textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: accentColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
