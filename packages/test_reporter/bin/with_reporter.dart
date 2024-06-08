import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:uuid/data.dart';
import 'package:uuid/rng.dart';
import 'package:uuid/uuid.dart';
import 'package:very_good_test_runner/very_good_test_runner.dart';
import 'package:path/path.dart' as p;

import 'package:test_reporter/src/aggregator.dart';

Future<void> main(List<String> args) async {
  final command = args.contains('--')
      ? args.skipWhile((value) => value != '--').skip(1)
      : args;

  if (command.isEmpty) {
    throw ArgumentError("No arguments was passed. Command was expected");
  }

  final testArgs = command
      .where((element) => !{'flutter', 'dart', 'test'}.contains(element))
      .toList();

  final aggregator = Aggregator();
  switch (command.first) {
    case 'flutter':
      flutterTest(arguments: testArgs).pipe(aggregator);

    default:
      dartTest(arguments: testArgs).pipe(aggregator);
  }

  final start = DateTime.now().millisecondsSinceEpoch;

  aggregator.onReportCreated.listen((report) async {
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

    File('allure-results/${json['id']}-result.json')
        .writeAsString(JsonEncoder.withIndent('  ').convert(json));
  });

  await aggregator.completed;
}
