library allure_report;

import 'package:allure_report/src/allure_reporter.dart';
import 'package:test_reporter/test_reporter.dart';

export 'src/allure_reporter.dart';
export 'src/allure.dart';

/// Entrypoint to create test reporter when `--reporter` arg used.
TestReporter createReporter(List<String> args) {
  return AllureReporter();
}
