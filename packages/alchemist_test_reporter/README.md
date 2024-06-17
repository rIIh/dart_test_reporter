# Alchemist Test Reporter

Special Golden Test Runner to report golden test results

## Usage

See [Example Test Config](/apps/sandbox/test/flutter_test_config.dart)

```dart
// flutter_test_config.dart
import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:alchemist_test_reporter/alchemist_test_reporter.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) {
  goldenTestRunner = GoldenTestRunnerWithReports(inner: goldenTestRunner);

  return AlchemistConfig.runWithConfig(
    config: const AlchemistConfig(),
    run: () async => await testMain(),
  );
}

```