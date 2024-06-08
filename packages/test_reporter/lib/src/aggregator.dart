import 'dart:async';
import 'package:test_reporter/src/data/test_report.dart';
import 'package:very_good_test_runner/very_good_test_runner.dart';

final class Aggregator implements StreamConsumer<TestEvent> {
  final Completer _completer = Completer();
  final StreamController<TestEvent> _controller = StreamController();

  final _reports = StreamController<TestReport>.broadcast();

  final Map<int, TestReport> tests = {};

  Stream<TestReport> get onReportCreated => _reports.stream;
  Future get completed => _completer.future;

  Aggregator() {
    _controller.stream.listen(handleEvent);
  }

  @override
  Future addStream(Stream<TestEvent> stream) {
    return _controller.addStream(stream);
  }

  @override
  Future close() {
    _completer.complete();
    return _controller.close();
  }

  void handleEvent(TestEvent event) {
    switch (event) {
      case TestStartEvent event:
        tests.putIfAbsent(event.test.id, () => TestReport());
        tests[event.test.id] = tests[event.test.id]!.copyWith(start: event);

      case MessageTestEvent event
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

        _reports.add(tests[event.testID]!);

      default:
        print(event);
    }
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
