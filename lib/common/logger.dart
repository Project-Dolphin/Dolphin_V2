import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

var logger = Logger(
  filter: ProductionReleaseFilter(),
  printer: PrettyPrinter(),
);

class ProductionReleaseFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    if (kReleaseMode) return false;

    var shouldLog = false;
    if (event.level.index >= Logger.level.index) {
      shouldLog = true;
    }

    return shouldLog;
  }
}
