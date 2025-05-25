import 'dart:async';

import 'package:test_reporter/test_reporter.dart';

/// Basic test reporter. Redirects test events from test process to stdout.
class BasicReporter implements TestReporter {
  const BasicReporter();

  @override
  FutureOr<void> onEvent(TestEvent event) {
    switch (event) {
      case TestStartRunnerEvent event:
        print(
          'Test runner started - pid: ${event.pid}, time: ${event.time}, '
          'protocolVersion: ${event.protocolVersion}, runnerVersion: ${event.runnerVersion}',
        );

      case TestAllSuitesEvent event:
        print('All suites: ${event.count}');
      case TestSuiteEvent event:
        print('Test suite started: ${event.suite.path}');
      case TestDebugEvent event:
        print('Debug: ${event.toString()}');
      case TestGroupEvent event:
        print('Test group started: ${event.group.name}');
      case TestStartEvent event:
        print('Test started: ${event.test.name}');
      case TestMessageEvent event:
        print('Message: ${event.message}');
      case TestErrorEvent event:
        print('Error: ${event.error}');
      case TestDoneEvent event:
        print(
          'Test completed: ${event.result.name}, skipped: ${event.skipped}',
        );
      case TestRunnerDoneEvent event:
        print('Test runner done. Success - ${event.success}');
      case TestExitEvent event:
        print('Test exited: ${event.exitCode}');
    }
  }
}
