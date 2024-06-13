import 'package:allure_report/allure_report.dart';
import 'package:test_reporter/test_reporter.dart';

TestReporter _main(List<String> args) {
  print("Creating custom reporter");
  return AllureReporter();
}
