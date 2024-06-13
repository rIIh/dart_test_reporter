import 'package:test_reporter/src/reporter/basic_reporter.dart';
import 'package:test_reporter/test_reporter.dart';

TestReporter createReporter(List<String> args) {
  return BasicReporter();
}
