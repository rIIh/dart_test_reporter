import 'dart:async';
import 'dart:convert';

import 'package:allure_report/src/events/diff_event.dart';
import 'package:allure_report/src/models/allure_link.dart';
import 'package:allure_report/src/models/severity.dart';
import 'package:allure_report/src/test_report.dart';
import 'package:mime/mime.dart';
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
  final Map<int, TestGroup> groups = {};
  final Map<int, TestSuite> suites = {};

  /// Key is "$id:$type"
  final Map<String, bool> status = {};
  final Map<int, Set<String>> tags = {};
  final Map<int, String> description = {};
  final Map<int, Severity> severity = {};
  final Map<int, Set<AllureLink>> links = {};
  final Map<int, Map<String, String>> extraLabels = {};

  Future get completed => _completer.future;

  AllureReporter() : start = DateTime.now().millisecondsSinceEpoch;

  void putTag(int id, String tag) {
    tags.putIfAbsent(id, () => {}).add(tag);
  }

  @override
  Future<void> onEvent(TestEvent event) async {
    switch (event) {
      case TestSuiteEvent event:
        suites[event.suite.id] = event.suite;

      case TestGroupEvent event:
        groups[event.group.id] = event.group;

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

      case TestMessageEvent event
          when event.messageType == 'print' &&
              DiffEvent.isEligible(event.message):
        try {
          final diffEvent = DiffEvent.fromMessage(event.message);
          final expectedBytes = await File(diffEvent.expected).readAsBytes();
          final actualBytes = await File(diffEvent.actual).readAsBytes();
          final diffBytes = await File(diffEvent.diff).readAsBytes();

          final id = Uuid().v4();
          final allureDiff = p.join(Directory.systemTemp.path, '$id.imagediff');
          File(allureDiff).writeAsStringSync(jsonEncode({
            'expected': 'data:image/png;base64,${base64.encode(expectedBytes)}',
            'actual': 'data:image/png;base64,${base64.encode(actualBytes)}',
            'diff': 'data:image/png;base64,${base64.encode(diffBytes)}',
          }));

          tests[event.testID] = tests[event.testID]!.copyWith(
            attachments: [
              ...tests[event.testID]!.attachments,
              allureDiff,
            ],
          );
        } catch (e) {
          print("[E]: Failed to create diff: $e");
        }

      case TestMessageEvent event
          when event.messageType == 'print' &&
              event.message.startsWith('allure:event:') &&
              handleCustomEvent(
                event.message.replaceFirst('allure:event:', ''),
                event.testID,
              ):
        break;

      case TestErrorEvent event:
        tests.putIfAbsent(event.testID, () => TestReport());
        tests[event.testID] = tests[event.testID]!.copyWith(error: event);

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

  bool handleCustomEvent(String event, int id) {
    late final statusDetailsMatch =
        RegExp(r'^(known|flaky|muted)$').firstMatch(event);
    late final tagMatch = RegExp(r'^tag:(.+)').firstMatch(event);
    late final severityMatch =
        RegExp(r'^severity:([a-zA-Z]+)').firstMatch(event);
    late final descriptionMatch =
        RegExp(r'^description:.+', multiLine: true).firstMatch(event);
    late final linkMatch = RegExp(r'^link:(.+):(.+):(.+)').firstMatch(event);
    late final epicFeatureStoryMatch =
        RegExp(r'^(epic|feature|story):(.+)').firstMatch(event);

    if (statusDetailsMatch case RegExpMatch match) {
      status['$id:${match.group(1)}'] = true;
      return true;
    } else if (tagMatch case RegExpMatch match) {
      putTag(id, match.group(1)!);
      return true;
    } else if (severityMatch case RegExpMatch match) {
      severity[id] = Severity.values
          .firstWhere((element) => element.name == match.group(1));
    } else if (descriptionMatch case RegExpMatch()) {
      description[id] = event.replaceAll('description:', '');
    } else if (linkMatch case RegExpMatch()) {
      print("Putting a link: ${AllureLink.fromEvent(event)}");
      links.putIfAbsent(id, () => {}).add(AllureLink.fromEvent(event));
    } else if (epicFeatureStoryMatch case RegExpMatch match) {
      final type = match.group(1)!;
      final value = match.group(2)!;

      extraLabels.putIfAbsent(id, () => {})[type] = value;
    }

    return false;
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
        'type': switch (p.basename(path)) {
          String filename when filename.endsWith('.imagediff') =>
            'application/vnd.allure.image.diff',
          String filename => lookupMimeType(filename)
        },
      });
    }

    final test = report.start!.test;
    if (test.name.contains(RegExp(r'^loading /'))) {
      // TODO(@melvspace): 06/17/24 investigate purpose of this pseudo test
      // ignore pseudo test
      return;
    }

    final testPath = getPath(
      test,
      test.groupIDs.map((e) => groups[e]!).toList(),
      suites[test.suiteID]!,
    );

    // TODO(@melvspace): 06/17/24 obtain package name from pubspec.yaml somehow
    late final String package;
    final parts = suites[test.suiteID]!.path!.split('/');
    for (final i in List.generate(parts.length, (index) => index)) {
      if (i + 1 >= parts.length) {
        package = '';
        break;
      } else if (parts[i + 1] == 'test') {
        package = parts[i];
        break;
      }
    }

    final suiteLabels = testPath.take(testPath.length - 1).toList();

    final json = {
      'id': id,
      'historyId': Uuid(
        goptions: GlobalOptions(
          MathRNG(
            seed: '${report.start!.test.name}:${report.start!.test.line}'
                .hashCode,
          ),
        ),
      ).v4(),
      'start': start + report.start!.time,
      'stop': start + report.end!.time,
      'name': testPath.lastOrNull,
      'description': description[test.id],
      'status': report.end!.skipped
          ? 'skipped'
          : switch (report.end!.result) {
              TestResult.success => 'passed',
              TestResult.failure => 'failed',
              TestResult.error => 'broken',
            },
      'links': [
        for (final link in (links[test.id] ?? <AllureLink>{}))
          {'name': link.name, 'url': link.link, 'type': link.type},
      ],
      'labels': [
        if (severity[test.id]?.name case String severity)
          {'name': 'severity', 'value': severity},
        {'name': 'parentSuite', 'value': suiteLabels.firstOrNull},
        {'name': 'suite', 'value': suiteLabels.skip(1).firstOrNull},
        {'name': 'subSuite', 'value': suiteLabels.skip(2).join(', ')},
        {'name': 'package', 'value': package},
        {'name': 'language', 'value': 'dart'},
        for (final label in (extraLabels[test.id] ?? {}).entries)
          {'name': label.key, 'value': label.value},
        for (final tag in (tags[test.id] ?? <String>{}))
          {'name': 'tag', 'value': tag}
      ] //
          .where((element) => element['value']?.isNotEmpty == true)
          .toList(),
      'statusDetails': {
        'flaky': status['${test.id}:flaky'] == true,
        'known': status['${test.id}:known'] == true,
        'muted': status['${test.id}:muted'] == true,
        'message': report.error?.error,
        'trace': report.error?.stackTrace,
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

List<String> getPath(Test test, List<TestGroup> groups, TestSuite suite) {
  groups = groups.where((element) => element.name.isNotEmpty).toList();

  List<String> result = [];
  String name = test.name //
      .replaceFirst(groups.lastOrNull?.name ?? '', '')
      .trim();

  result.add(name);

  for (var i = groups.length - 1; i >= 0; i--) {
    final parentGroup = i == 0 ? null : groups[i - 1];
    result.add(groups[i].name.replaceFirst(parentGroup?.name ?? '', '').trim());
  }

  result.add(
    suite.path! //
        .split('/')
        .skipWhile((value) => value != 'test')
        .join('/'),
  );

  return result.reversed.toList();
}
