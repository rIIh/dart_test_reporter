// ignore_for_file: implementation_imports

import 'dart:io';
import 'dart:math';

import 'package:path/path.dart' as p;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:alchemist/alchemist.dart';
import 'package:alchemist/src/golden_test_runner.dart';
import 'package:image/image.dart' as img;
import 'package:diff_image2/diff_image2.dart';

typedef AttachmentCallback = void Function(
  String expected,
  String actual,
  String diff,
);

class GoldenTestRunnerWithReports extends GoldenTestRunner {
  final GoldenTestRunner _inner;
  final AttachmentCallback? onAttachmentCreated;

  GoldenTestRunnerWithReports({
    required GoldenTestRunner inner,
    this.onAttachmentCreated,
  }) : _inner = inner;

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
      final diffFile = File(p.join(
        Directory.current.path,
        'test',
        'failures',
        '${name}_maskedDiff$extension',
      ));

      if (masterFile.existsSync() && testFile.existsSync()) {
        final time = DateTime.now();
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
        final diff = p.join(Directory.current.path, 'reports', 'failures',
            subfolder, p.basename(diffFile.path));

        masterFile.copySync(base);
        testFile.copySync(test);

        try {
          if (diffFile.existsSync()) {
            diffFile.copySync(diff);
          } else {
            _fitImages(base, test);
            _writeDiff(base, test, diff);
          }

          print('Elapsed - ${DateTime.now().difference(time)}');

          if (onAttachmentCreated case AttachmentCallback onAttachmentCreated) {
            onAttachmentCreated(base, test, diff);
          } else {
            print('event:attachment:$base');
            print('event:attachment:$test');
            print('event:attachment:$diff');
          }
        } catch (e) {
          print(e.toString());
        }
      }
    }
  }
}

Future<void> _fitImages(String left, String right) async {
  var (leftImage, rightImage) = (
    img.decodePng(File(left).readAsBytesSync()),
    img.decodePng(File(right).readAsBytesSync()),
  );

  if (leftImage == null || rightImage == null) return;

  final newLeftImage = img.copyExpandCanvas(
    leftImage,
    newWidth: max(leftImage.width, rightImage.width),
    newHeight: max(leftImage.height, rightImage.height),
    position: img.ExpandCanvasPosition.topLeft,
    backgroundColor: img.ColorRgba8(255, 255, 255, 255),
  );
  final newRightImage = img.copyExpandCanvas(
    rightImage,
    newWidth: max(leftImage.width, rightImage.width),
    newHeight: max(leftImage.height, rightImage.height),
    position: img.ExpandCanvasPosition.topLeft,
    backgroundColor: img.ColorRgba8(255, 255, 255, 255),
  );

  File(left).writeAsBytesSync(img.encodePng(newLeftImage));
  File(right).writeAsBytesSync(img.encodePng(newRightImage));
}

void _writeDiff(String left, String right, String diff) {
  final leftFile = img.decodePng(File(left).readAsBytesSync());
  final rightFile = img.decodePng(File(right).readAsBytesSync());

  var diffResult = DiffImage.compareFromMemory(leftFile!, rightFile!);
  final png = img.encodePng(diffResult.diffImage);
  File(diff).writeAsBytesSync(png);
}
