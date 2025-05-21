import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:ansicolor/ansicolor.dart';
import 'package:test_reporter/src/args/arg_parser.dart';
import 'package:test_reporter/src/model/models.dart';
import 'package:test_reporter/src/runner/test_runner.dart';
import 'package:path/path.dart' as p;

Future<void> main(List<String> args) async {
  final parser = buildArgParser();
  final results = parser.parse(args);
  final command = results.rest.contains('--')
      ? results.rest.skipWhile((value) => value != '--').skip(1)
      : results.rest;

  final reporter = results.option('reporter');

  if (command.isEmpty) {
    throw ArgumentError("No command was passed. Dart command was expected");
  }

  final testArgs = command
      .where((element) => !{'flutter', 'dart', 'test'}.contains(element))
      .toList();

  final Stream<TestEvent> events;
  switch (command.first) {
    case 'flutter':
      events = flutterTest(arguments: testArgs);

    default:
      events = dartTest(arguments: testArgs);
  }

  final (_, reporterPort) = await createReporter(reporter, args);

  events.listen(
    (event) async {
      reporterPort.send(jsonEncode(event.toJson()));
      if (event is TestExitEvent) {
        // TODO(@melvspace): 06/13/24 exit when isolate done its work
        await Future.delayed(Duration(seconds: 2));
        exit(event.exitCode);
      }
    },
    onError: (err) {
      AnsiPen pen = AnsiPen()..red(bold: false);
      print(pen(err));
    },
  );
}

// TODO(@melvspace): 06/12/24 handle errors
Future<(Isolate, SendPort)> createReporter(
  String? reporter,
  List<String> args,
) async {
  final Directory tempDir = Directory.systemTemp.createTempSync();

  final (customImportLine, method, hasArgs) =
      await getCustomReporterImport(as: 'e1',path:tempDir.path) ?? ('', '', false);
  final importLine = customImportLine.isEmpty
      ? switch (reporter) {
          String package when package.contains('/') =>
            "import 'package:$package.dart';",
          String package => "import 'package:$package/$package.dart';",
          _ => "import 'package:test_reporter/basic_reporter.dart';"
        }
      : "";

  final code = '''
import 'dart:io';
import 'dart:isolate';
import 'dart:async';
import 'dart:convert';

import 'package:test_reporter/test_reporter.dart';
$importLine
$customImportLine

Future<void> main(List<String> args, SendPort sendPort) async {
  await runZoned(
    () async {
      final port = ReceivePort();
      sendPort.send(port.sendPort);

      final reporter = ${customImportLine.isNotEmpty ? 'e1.$method(${hasArgs ? 'args' : ''})' : ' createReporter(args)'};
      late final StreamSubscription subscription;
      subscription = port.listen((e) async {
        final event = TestEvent.fromJson(jsonDecode(e));
        reporter.onEvent(event);

        if (event is TestExitEvent) {
          subscription.cancel();
          port.close();

          // TODO(@melvspace): 06/13/24 detect io running operations to exit safely
          await Future.delayed(Duration(seconds: 1));
          exit(0);
        }
      });
    },
    zoneSpecification: ZoneSpecification(
      print: (self, parent, zone, line) => sendPort.send(line),
    ),
  );
}
''';
  String absoluteFilePath = File(p.join(tempDir.path, '_reporter_temp_.dart')).absolute.path;
  /// Ensure the parent directory exists
  Directory(p.dirname(absoluteFilePath)).createSync(recursive: true);
  final File tempFile = File(absoluteFilePath);
  await tempFile.writeAsString(code);

  final ReceivePort receivePort = ReceivePort();
  Completer<SendPort> sendPortCompleter = Completer();
  final isolate = Isolate.spawnUri(
    Uri.file(tempFile.path),
    args,
    receivePort.sendPort,
  );

  receivePort.listen(
    (message) {
      if (message is SendPort && !sendPortCompleter.isCompleted) {
        sendPortCompleter.complete(message);
      }

      if (message is! SendPort) {
        print(message.toString());
      }
    },
  );

  return (await isolate, await sendPortCompleter.future);
}

Future<(String, String, bool)?> getCustomReporterImport(
    {String as = '',String path=''}) async {
  final customReporter = File(p.join('test', 'reporter.dart'));
  String relativePath = _posixRelative(customReporter.absolute.path, from:path);
  /// Get the absolute path and replace '\' with '\\'
  final sanitizedPath = relativePath.replaceAll(r'\', r'\\');
  final customReporterImportLine =
      "import '$sanitizedPath'${as.isNotEmpty ? 'as $as' : ''};";

  if (!await customReporter.exists()) return null;

  final content = await customReporter.readAsString();
  final regexp = RegExp(
    r'TestReporter ([a-zA-Z][a-zA-Z\d_]+)\((List<String> [a-zA-Z][a-zA-Z\d_]+)?\)',
  );

  final matches = regexp.firstMatch(content);
  final methodName = matches?.group(1);
  final hasArgs = matches?.group(2) != null;

  if (methodName != null) {
    return (customReporterImportLine, methodName, hasArgs);
  }

  return null;
}
/// This creates a relative path from `from` to `input`, the output being a
/// posix path on all platforms.
/// by talel briki 15/05/2025
String _posixRelative(String input, {String from = ""}) {
  // Use the appropriate context for Windows
  final p.Context context = p.Context(style: p.Style.windows);

  // Ensure the input and "from" paths are absolute
  final String absInputPath = File(input).absolute.path;
  final String absFromPath = Directory(from).absolute.path;

  // Print the resolved absolute paths

  // Compute the relative path
  final String relativePath = context.relative(absInputPath, from: absFromPath);

  return relativePath;
}

