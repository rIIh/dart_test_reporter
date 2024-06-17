// ignore_for_file: implementation_imports

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:alchemist/alchemist.dart';
import 'package:alchemist/src/golden_test_runner.dart';

class GoldenTestRunnerWithReports extends GoldenTestRunner {
  final GoldenTestRunner _inner;

  GoldenTestRunnerWithReports({required GoldenTestRunner inner})
      : _inner = inner;

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
