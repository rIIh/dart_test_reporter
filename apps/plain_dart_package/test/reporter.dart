import 'package:allure_report/allure_report.dart';
import 'package:test_reporter/test_reporter.dart';

TestReporter createReporter() {
  return AllureReporter();
}
