import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_reporter/test_reporter.dart';

part 'test_report.freezed.dart';

@freezed
class TestReport with _$TestReport {
  const TestReport._();

  const factory TestReport({
    TestStartEvent? start,
    TestDoneEvent? end,
    @Default([]) List<String> attachments,
  }) = _TestReport;

  int get id => start!.test.id;
}
