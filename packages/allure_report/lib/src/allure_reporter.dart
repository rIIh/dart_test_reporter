import 'dart:async';
import 'dart:convert';

import 'package:allure_report/src/test_report.dart';
import 'package:test_reporter/test_reporter.dart';
import 'package:universal_io/io.dart';
import 'package:uuid/data.dart';
import 'package:uuid/rng.dart';
import 'package:uuid/uuid.dart';
import 'package:path/path.dart' as p;

class AllureReporter implements TestReporter {
  final int start;
  final Completer _completer = Completer();

  final Map<int, TestReport> tests = {};

  Future get completed => _completer.future;

  AllureReporter() : start = DateTime.now().millisecondsSinceEpoch;

  @override
  FutureOr<void> onEvent(TestEvent event) {
    switch (event) {
      case TestStartEvent event:
        tests.putIfAbsent(event.test.id, () => TestReport());
        tests[event.test.id] = tests[event.test.id]!.copyWith(start: event);

      case TestMessageEvent event
          when event.messageType == 'print' &&
              AttachmentEvent.isEligible(event.message):
        final attachmentEvent = AttachmentEvent.fromMessage(event.message);
        tests[event.testID] = tests[event.testID]!.copyWith(
          attachments: [
            ...tests[event.testID]!.attachments,
            attachmentEvent.attachment,
          ],
        );

      case TestDoneEvent event:
        tests.putIfAbsent(event.testID, () => TestReport());
        tests[event.testID] = tests[event.testID]!.copyWith(end: event);

        onReportCreated(tests[event.testID]!);

      case TestExitEvent event:
        exit(event.exitCode);

      default:
        print(event);
    }
  }

  Future<void> onReportCreated(TestReport report) async {
    // TODO(@melvspace): 06/12/24 define output with args
    await Directory('allure-results').create();

    final id = Uuid().v4();
    final attachments = <Map>[];

    for (final attachment in report.attachments) {
      final attachmentId = Uuid().v4();

      final extension = p.extension(attachment);
      final path = 'allure-results/$attachmentId-attachment$extension';

      await Directory(p.dirname(path)).create();
      await File(attachment).copy(path);

      attachments.add({
        'name': p.basenameWithoutExtension(path),
        'source': p.basename(path),
      });
    }

    final json = {
      'id': id,
      'historyId': Uuid(
        goptions: GlobalOptions(
          MathRNG(seed: report.start!.test.name.hashCode),
        ),
      ).v4(),
      'start': start + report.start!.time,
      'stop': start + report.end!.time,
      'name': report.start!.test.name,
      'status': switch (report.end!.result) {
        TestResult.success => 'passed',
        TestResult.failure => 'failed',
        TestResult.error => 'broken',
      },
      'attachments': attachments
    };

    // TODO(@melvspace): 06/12/24 define output with args
    File('allure-results/${json['id']}-result.json')
        .writeAsString(JsonEncoder.withIndent('  ').convert(json));
  }
}

class AttachmentEvent {
  static const kTag = 'event:attachment';
  static bool isEligible(String message) {
    return message.startsWith('$kTag:');
  }

  AttachmentEvent.fromMessage(String message)
      : attachment = message.replaceAll('$kTag:', '');

  final String attachment;
}
