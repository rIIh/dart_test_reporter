import 'package:logger/logger.dart';

var logFilter = _Filter();
var l = Logger(
  level: Level.error,
  filter: logFilter,
  printer: SimplePrinter(),
);

class _Filter extends LogFilter {
  bool verbose = false;

  @override
  bool shouldLog(LogEvent event) {
    if (verbose) {
      return true;
    }

    return event.level.value >= Level.error.value;
  }
}
