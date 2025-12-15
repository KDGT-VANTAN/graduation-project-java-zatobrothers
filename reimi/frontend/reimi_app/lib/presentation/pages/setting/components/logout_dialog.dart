import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:reimi_app/i18n/strings.g.dart';

Future<void> logoutDialog(
    {required BuildContext context, required VoidCallback onLogOut}) async {
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
                  'ログアウトの確認',
                  style: theme.textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1A2F34),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '本当にログアウトしますか？',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: const Color(0xFF1A2F34),
                      ),
                    ),
                  ],
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
                          onPressed: () => Navigator.pop(context),
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
                              side: const BorderSide(
                                color: Colors.red,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            onLogOut();
                          },
                          child: Text(
                            t.logout,
                            style: theme.textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.red,
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
