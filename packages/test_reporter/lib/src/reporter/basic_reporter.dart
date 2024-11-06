import 'dart:async';

import 'package:test_reporter/test_reporter.dart';

/// Basic test reporter. Redirects test events from test process to stdout.
class BasicReporter implements TestReporter {
  const BasicReporter();

  @override
  FutureOr<void> onEvent(TestEvent event) {
    print("Basic Reporter: $event");
  }
}
