import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/firebase/firebase_crashlytics_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:logger/logger.dart';

import 'logger_config.dart';
import 'app_logger.dart';

part 'logger_provider.g.dart';

@riverpod
Logger rawLogger(Ref ref) {
  return LoggerConfig.create();
}

@riverpod
AppLogger appLogger(Ref ref) {
  return AppLogger(
    ref.watch(rawLoggerProvider),
    ref.watch(firebaseCrashlyticsProvider),
  );
}
