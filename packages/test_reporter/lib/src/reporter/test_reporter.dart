import 'dart:async';

import 'package:test_reporter/src/model/models.dart';
import 'package:test_reporter/src/reporter/basic_reporter.dart';

/// Special reporter class to implement test report formats.
///
/// See [BasicReporter] for example or [AllureReporter] from `allure_report` package.
abstract interface class TestReporter {
  /// This method will be called for every test event from `dart test`/`flutter test` process.
  FutureOr<void> onEvent(TestEvent event);
}
