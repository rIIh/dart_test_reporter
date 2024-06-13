library allure_report;

import 'package:allure_report/src/allure_reporter.dart';
import 'package:test_reporter/test_reporter.dart';

export 'src/allure_reporter.dart';

TestReporter createReporter(List<String> args) {
  return AllureReporter();
}
