import 'package:flutter/foundation.dart';

/// 長い文字列を分割して安全にログ出力する
void logLong(
  String message, {
  int chunkSize = 800,
}) {
  if (!kDebugMode) return;

  final length = message.length;
  if (length <= chunkSize) {
    debugPrint(message);
    return;
  }

  for (var i = 0; i < length; i += chunkSize) {
    final end = (i + chunkSize < length) ? i + chunkSize : length;
    debugPrint(message.substring(i, end));
  }
}
