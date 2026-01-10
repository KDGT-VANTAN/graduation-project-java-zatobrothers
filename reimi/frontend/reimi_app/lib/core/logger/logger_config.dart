import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class LoggerConfig {
  static Logger create() {
    return Logger(
      printer: PrettyPrinter(
        methodCount: kDebugMode ? 2 : 0,
        errorMethodCount: 5,
        lineLength: 120,
        printEmojis: true,
        dateTimeFormat: DateTimeFormat.dateAndTime,
      ),
      level: kDebugMode ? Level.trace : Level.info,
    );
  }
}
