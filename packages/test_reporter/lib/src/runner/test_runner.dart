// Copied and adapted from https://github.com/VeryGoodOpenSource/very_good_test_runner/blob/main/lib/src/very_good_test_runner.dart
import 'dart:async';
import 'dart:convert';

import 'package:test_reporter/src/model/models.dart';
import 'package:universal_io/io.dart';

/// Signature for `Process.start`.
typedef StartProcess = Future<Process> Function(
  String executable,
  List<String> arguments, {
  String? workingDirectory,
  Map<String, String>? environment,
  bool includeParentEnvironment,
  bool runInShell,
  ProcessStartMode mode,
});

/// Runs `dart test` and returns a stream of [TestEvent]
/// reported by the process.
///
/// ```dart
/// void main() {
///   // React to `TestEvent` instances.
///   dartTest().listen(print);
/// }
/// ```
Stream<TestEvent> dartTest({
  List<String>? arguments,
  String? workingDirectory,
  Map<String, String>? environment,
  bool runInShell = false,
  StartProcess startProcess = Process.start,
}) {
  return _runTestProcess(
    () => startProcess(
      'dart',
      ['test', ...?arguments, '--reporter=json'],
      environment: environment,
      workingDirectory: workingDirectory,
      runInShell: runInShell,
    ),
  );
}

/// Runs `flutter test` and returns a stream of [TestEvent]
/// reported by the process.
///
/// ```dart
/// void main() {
///   // React to `TestEvent` instances.
///   flutterTest().listen(print);
/// }
/// ```
Stream<TestEvent> flutterTest({
  List<String>? arguments,
  String? workingDirectory,
  Map<String, String>? environment,
  bool runInShell = false,
  StartProcess startProcess = Process.start,
}) async*{
  ///should extract flutter path to use it to run command
  final flutterPath = await getActiveFlutterPath();
  if (flutterPath == null) {
    throw Exception('Flutter executable not found in PATH.');
  }
  yield* _runTestProcess(
        () => startProcess(
      flutterPath,
      ['test', ...?arguments, '--reporter=json'],
      environment: environment,
      workingDirectory: workingDirectory,
      runInShell: runInShell,
    ),
  );
}

Stream<TestEvent> _runTestProcess(
  Future<Process> Function() processRunner,
) {
  final controller = StreamController<TestEvent>();
  late StreamSubscription<dynamic> testEventSubscription;
  late StreamSubscription<dynamic> errorSubscription;
  late Future<Process> processFuture;

  Future<void> onListen() async {
    final stopwatch = Stopwatch()..start();
    processFuture = processRunner();
    final process = await processFuture;
    final errors = process.stderr.map((e) => utf8.decode(e).trim());
    final testEvents = process.stdout.mapToTestEvents();
    errorSubscription = errors.listen(controller.addError);
    testEventSubscription = testEvents.listen(
      controller.add,
      onError: controller.addError,
    );

    final exitCode = await process.exitCode;
    stopwatch.stop();
    await Future.wait([
      errorSubscription.cancel(),
      testEventSubscription.cancel(),
    ]);
    if (controller.isClosed) return;
    controller.add(
      TestExitEvent(
        time: stopwatch.elapsedMilliseconds,
        exitCode: exitCode,
      ),
    );
    await controller.close();
  }

  Future<void> onCancel() async {
    await controller.close();
    (await processFuture).kill();
    await errorSubscription.cancel();
    await testEventSubscription.cancel();
  }

  controller
    ..onListen = onListen
    ..onCancel = onCancel;

  return controller.stream;
}

extension on Stream<List<int>> {
  Stream<TestEvent> mapToTestEvents() {
    return map(utf8.decode)
        .expand<String>(_splitLines)
        .map<Map<String, Object?>>(_tryDecode)
        .where((value) => value.isNotEmpty)
        .map(TestEvent.fromJson);
  }

  Iterable<String> _splitLines(String content) sync* {
    for (final line in content.split('\n')) {
      yield line.trim();
    }
  }

  Map<String, Object?> _tryDecode(String value) {
    try {
      if (value.isEmpty) return const {};
      return json.decode(value) as Map<String, Object?>;
    } on FormatException {
      return const {};
    }
  }
}

///get flutter path
/// by talel briki 15/05/2025
Future<String?> getActiveFlutterPath() async {
  try {
    final result = await Process.run(
      Platform.isWindows ? 'flutter.bat' : 'flutter',
      ['--version', '--machine'],
    );


    if (result.exitCode == 0) {
      final output = result.stdout as String;
      final jsonMap = jsonDecode(output);

      final flutterRoot = jsonMap['flutterRoot'];

      if (flutterRoot != null) {
        final flutterPath = Platform.isWindows
            ? '$flutterRoot\\bin\\flutter.bat'
            : '$flutterRoot/bin/flutter';
        return flutterPath;
      }
    }
  } catch (e) {
    print('Failed to detect Flutter path: $e');
  }

  return null;
}
