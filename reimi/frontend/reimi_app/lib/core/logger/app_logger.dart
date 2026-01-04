import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class AppLogger {
  AppLogger(
    this._logger,
    this._crashlytics,
  );
  final Logger _logger;
  final FirebaseCrashlytics _crashlytics;

  void trace(dynamic message) {
    _logger.t(message);
  }

  void debug(dynamic message) {
    _logger.d(message);
  }

  void info(dynamic message) {
    _logger.i(message);
  }

  void warning(
    dynamic message, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    _logger.w(message, error: error, stackTrace: stackTrace);

    if (kReleaseMode) {
      _crashlytics.log('[WARNING] $message');
    }
  }

  void error(
    dynamic message, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    _logger.e(message, error: error, stackTrace: stackTrace);

    if (kReleaseMode && error != null) {
      _crashlytics.recordError(
        error,
        stackTrace,
        reason: message.toString(),
        fatal: false,
      );
    }
  }
}
