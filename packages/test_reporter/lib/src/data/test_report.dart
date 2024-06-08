import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:very_good_test_runner/very_good_test_runner.dart';

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
