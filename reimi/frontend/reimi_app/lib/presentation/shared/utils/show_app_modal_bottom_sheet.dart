import 'package:flutter/material.dart';

Future<T?> showAppModalBottomSheet<T>({
  required BuildContext context,
  required Widget child,
  bool useRootNavigator = true,
  bool isScrollControlled = true,
  Color backgroundColor = Colors.transparent,
}) {
  return showModalBottomSheet<T>(
    context: context,
    useRootNavigator: useRootNavigator,
    isScrollControlled: isScrollControlled,
    backgroundColor: backgroundColor,
    builder: (_) => child,
  );
}
