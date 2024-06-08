// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:io';
import 'package:path/path.dart' as p;

import 'package:alchemist/alchemist.dart';
import 'package:alchemist/src/golden_test_runner.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) {
  const isRunningInCi = bool.fromEnvironment('CI', defaultValue: false);
  goldenTestRunner = _ReportGoldenTestRunner(inner: goldenTestRunner);

  return AlchemistConfig.runWithConfig(
    config: AlchemistConfig(
      // forceUpdateGoldenFiles: true,
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

class _ReportGoldenTestRunner extends GoldenTestRunner {
  final GoldenTestRunner _inner;

  _ReportGoldenTestRunner({required GoldenTestRunner inner}) : _inner = inner;

  @override
  Future<void> run({
    required WidgetTester tester,
    required Object goldenPath,
    required Widget widget,
    required ThemeData? globalConfigTheme,
    required ThemeData? variantConfigTheme,
    bool forceUpdate = false,
    bool obscureText = false,
    bool renderShadows = false,
    double textScaleFactor = 1.0,
    BoxConstraints constraints = const BoxConstraints(),
    PumpAction pumpBeforeTest = onlyPumpAndSettle,
    PumpWidget pumpWidget = onlyPumpWidget,
    Interaction? whilePerforming,
  }) async {
    try {
      await _inner.run(
        tester: tester,
        goldenPath: goldenPath,
        widget: widget,
        globalConfigTheme: globalConfigTheme,
        variantConfigTheme: variantConfigTheme,
        forceUpdate: forceUpdate,
        obscureText: obscureText,
        renderShadows: renderShadows,
        textScaleFactor: textScaleFactor,
        constraints: constraints,
        pumpBeforeTest: pumpBeforeTest,
        pumpWidget: pumpWidget,
        whilePerforming: whilePerforming,
      );
    } finally {
      final name = p.basenameWithoutExtension(goldenPath.toString());
      final extension = p.extension(goldenPath.toString());
      final masterFile = File(p.join(
        Directory.current.path,
        'test',
        'failures',
        '${name}_masterImage$extension',
      ));
      final testFile = File(p.join(
        Directory.current.path,
        'test',
        'failures',
        '${name}_testImage$extension',
      ));

      if (masterFile.existsSync() && testFile.existsSync()) {
        final subfolder =
            p.dirname(goldenPath.toString()).replaceAll('goldens/', '');

        Directory(p.join(
          Directory.current.path,
          'reports',
          'failures',
          subfolder,
        )).createSync(recursive: true);

        final base = p.join(Directory.current.path, 'reports', 'failures',
            subfolder, p.basename(masterFile.path));
        final test = p.join(Directory.current.path, 'reports', 'failures',
            subfolder, p.basename(testFile.path));

        masterFile.copySync(base);
        testFile.copySync(test);

        print('event:attachment:$base');
        print('event:attachment:$test');
      }
    }
  }
}
