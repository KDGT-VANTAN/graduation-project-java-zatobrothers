import 'package:flutter/material.dart';

enum SnackBarType {
  success,
  error,
  warning,
}

class AppSnackBar {
  static void show(
    BuildContext context, {
    required String message,
    required SnackBarType type,
    Duration duration = const Duration(seconds: 3),
  }) {
    final style = _styleFor(context, type);

    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: style.backgroundColor,
          duration: duration,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          content: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                style.icon,
                color: style.foregroundColor,
                size: 22,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  message,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: style.foregroundColor,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ],
          ),
        ),
      );
  }

  /// よく使うショートカット
  static void success(BuildContext context, String message) =>
      show(context, message: message, type: SnackBarType.success);

  static void error(BuildContext context, String message) =>
      show(context, message: message, type: SnackBarType.error);

  static void warning(BuildContext context, String message) =>
      show(context, message: message, type: SnackBarType.warning);
}

class _SnackBarStyle {
  final Color backgroundColor;
  final Color foregroundColor;
  final IconData icon;

  const _SnackBarStyle({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.icon,
  });
}

_SnackBarStyle _styleFor(
  BuildContext context,
  SnackBarType type,
) {
  final scheme = Theme.of(context).colorScheme;

  switch (type) {
    case SnackBarType.success:
      return _SnackBarStyle(
        backgroundColor: scheme.primaryContainer,
        foregroundColor: scheme.onPrimaryContainer,
        icon: Icons.check_circle_outline,
      );

    case SnackBarType.error:
      return _SnackBarStyle(
        backgroundColor: scheme.errorContainer,
        foregroundColor: scheme.onErrorContainer,
        icon: Icons.error_outline,
      );

    case SnackBarType.warning:
      return _SnackBarStyle(
        backgroundColor: scheme.secondaryContainer,
        foregroundColor: scheme.onSecondaryContainer,
        icon: Icons.warning_amber_outlined,
      );
  }
}
