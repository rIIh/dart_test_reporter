import 'dart:async';

import 'package:test_reporter/src/model/models.dart';

abstract interface class TestReporter {
  FutureOr<void> onEvent(TestEvent event);
}
