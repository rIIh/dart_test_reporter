import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:alchemist_test_reporter/alchemist_test_reporter.dart';
import 'package:allure_report/allure_report.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) {
  const isRunningInCi = bool.fromEnvironment('CI', defaultValue: false);
  goldenTestRunner = GoldenTestRunnerWithReports(
    inner: goldenTestRunner,
    onAttachmentCreated: Allure.diff,
  );

  return AlchemistConfig.runWithConfig(
    config: AlchemistConfig(
      platformGoldensConfig: PlatformGoldensConfig(
        platforms: {HostPlatform.current()},
        enabled: !isRunningInCi,
      ),
    ),
    run: () async {
      await testMain();
    },
  );
}
