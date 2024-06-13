// Copied and adapted from https://github.com/VeryGoodOpenSource/very_good_test_runner/blob/main/lib/src/models/test_event.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_event.freezed.dart';
part 'test_event.g.dart';

/// This is the root class of the protocol.
/// All root-level objects emitted by the JSON reporter
/// will be subclasses of [TestEvent].
/// https://github.com/dart-lang/test/blob/master/pkgs/test/doc/json_reporter.md
@Freezed(unionKey: 'type')
class TestEvent with _$TestEvent {
  /// A single start event is emitted before any other events.
  /// It indicates that the test runner has started running.
  const factory TestEvent.start({
    /// The version of the JSON reporter protocol being used.
    ///
    /// This is a semantic version, but it reflects only the version of the
    /// protocol—it's not identical to the version of the test runner itself.
    required String protocolVersion,

    /// The version of the test runner being used.
    ///
    /// This is null if for some reason the version couldn't be loaded.
    required String? runnerVersion,

    /// The pid of the VM process running the tests.
    required int pid,

    /// {@template test_event.time}
    /// The time (in milliseconds) that has elapsed since the test runner started.
    /// {@endtemplate}
    required int time,
  }) = TestStartRunnerEvent;

  /// A single suite count event is emitted once the test runner knows the total
  /// number of suites that will be loaded over the course of the test run.
  /// Because this is determined asynchronously, its position relative to other
  /// events (except [TestStartTestEvent]) is not guaranteed.
  const factory TestEvent.allSuites({
    /// The total number of suites that will be loaded.
    required int count,

    /// {@macro test_event.time}
    required int time,
  }) = TestAllSuitesEvent;

  /// A suite event is emitted before any GroupEvents for groups
  /// in a given test suite.
  /// This is the only event that contains the full metadata about a suite;
  /// future events will refer to the suite by its opaque ID.
  const factory TestEvent.suite({
    /// Metadata about the suite.
    required TestSuite suite,

    /// {@macro test_event.time}
    required int time,
  }) = TestSuiteEvent;

  /// A debug event is emitted after (although not necessarily directly after)
  /// a [TestSuiteEvent], and includes information about how to debug that suite.
  /// It's only emitted if the --debug flag is passed to the test runner.
  const factory TestEvent.debug({
    /// The suite for which debug information is reported.
    required int suiteID,

    /// The HTTP URL for the Dart Observatory, or `null` if the Observatory isn't
    /// available for this suite.
    required String? observatory,

    /// The HTTP URL for the remote debugger for this suite's host page, or `null`
    /// if no remote debugger is available for this suite.
    required String? remoteDebugger,

    /// {@macro test_event.time}
    required int time,
  }) = TestDebugEvent;

  /// A group event is emitted before any
  /// [TestStartEvent] for tests in a given group.
  /// This is the only event that contains the full metadata about a group;
  /// future events will refer to the group by its opaque ID.
  const factory TestEvent.group({
    /// Metadata about the group.
    required TestGroup group,

    /// {@macro test_event.time}
    required int time,
  }) = TestGroupEvent;

  /// An event emitted when a test begins running.
  /// This is the only event that contains the full metadata about a test;
  /// future events will refer to the test by its opaque ID.
  @FreezedUnionValue('testStart')
  const factory TestEvent.startTest({
    /// Metadata about the test that started.
    required Test test,

    /// {@macro test_event.time}
    required int time,
  }) = TestStartEvent;

  /// A MessageEvent indicates that a test emitted a message that
  /// should be displayed to the user.
  /// The [messageType] field indicates the precise type of this message.
  /// Different message types should be visually distinguishable.
  @FreezedUnionValue('print')
  const factory TestEvent.message({
    /// The ID of the test that printed a message.
    required int testID,

    /// The type of message being printed.
    required String messageType,

    /// The message that was printed.
    required String message,

    /// {@macro test_event.time}
    required int time,
  }) = TestMessageEvent;

  /// An [ErrorTestEvent] indicates that a test encountered an uncaught error.
  /// Note that this may happen even after the test has completed,
  /// in which case it should be considered to have failed.
  const factory TestEvent.error({
    /// The ID of the test that experienced the error.
    required int testID,

    /// The result of calling toString() on the error object.
    required String error,

    /// The error's stack trace, in the stack_trace package format.
    required String stackTrace,

    /// Whether the error was a TestFailure.
    required bool isFailure,

    /// {@macro test_event.time}
    required int time,
  }) = TestErrorEvent;

  /// An event emitted when a test completes.
  /// The result attribute indicates the result of the test.
  const factory TestEvent.testDone({
    /// The ID of the test that completed.
    required int testID,

    /// The result of the test.
    required TestResult result,

    /// Whether the test's result should be hidden.
    required bool hidden,

    /// Whether the test (or some part of it) was skipped.
    required bool skipped,

    /// {@macro test_event.time}
    required int time,
  }) = TestDoneEvent;

  /// An event indicating the result of the entire test run.
  /// This will be the final event emitted by the reporter.
  const factory TestEvent.done({
    /// Whether all tests succeeded (or were skipped).
    ///
    /// Will be `null` if the test runner was close before all tests completed
    /// running.
    required bool? success,

    /// {@macro test_event.time}
    required int time,
  }) = TestRunnerDoneEvent;

  /// An event emitted when a test completes.
  /// The [exitCode] attribute indicates the result of the test process.
  const factory TestEvent.exit({
    /// The exit code associated with the test process.
    required int exitCode,

    /// {@macro test_event.time}
    required int time,
  }) = TestExitEvent;

  factory TestEvent.fromJson(Map<String, dynamic> json) =>
      _$TestEventFromJson(json);
}

/// The result of a test.
enum TestResult {
  /// the test had no errors
  success,

  /// the test had a `TestFailure` but no other errors.
  failure,

  /// the test had an error other than `TestFailure`
  error
}

/// {@template test_suite}
/// A test suite corresponding to a loaded test file.
/// The suite's ID is unique in the context of this test run.
/// It's used elsewhere in the protocol to refer to this suite
/// without including its full representation.

/// A suite's platform is one of the platforms that can be passed to the
/// --platform option, or null if there is no platform
/// (for example if the file doesn't exist at all).
/// Its path is either absolute or relative to the root of the current package.
/// {@endtemplate}
@freezed
class TestSuite with _$TestSuite {
  /// {@macro test_suite}
  const factory TestSuite({
    /// An opaque ID for the group.
    required int id,

    /// The platform on which the suite is running.
    required String platform,

    /// The path to the suite's file, or `null` if that path is unknown.
    required String? path,
  }) = _TestSuite;

  /// {@macro test_suite}
  factory TestSuite.fromJson(Map<String, dynamic> json) =>
      _$TestSuiteFromJson(json);
}

/// {@template test_group}
/// A group containing test cases.
/// The group's ID is unique in the context of this test run.
/// It's used elsewhere in the protocol to refer to this group
/// without including its full representation.
/// {@endtemplate}
@freezed
class TestGroup with _$TestGroup {
  /// {@macro test_group}
  const factory TestGroup({
    /// An opaque ID for the group.
    required int id,

    /// The name of the group, including prefixes from any containing groups.
    required String name,

    /// The ID of the suite containing this group.
    required int suiteID,

    /// The ID of the group's parent group, unless it's the root group.
    required int? parentID,

    /// The number of tests (recursively) within this group.
    required int testCount,

    /// The (1-based) line on which the group was defined, or `null`.
    required int? line,

    /// The (1-based) column on which the group was defined, or `null`.
    required int? column,

    /// The URL for the file in which the group was defined, or `null`.
    required String? url,

    /// This field is deprecated and should not be used.
    required TestMetadata metadata,
  }) = _TestGroup;

  /// {@macro test_group}
  factory TestGroup.fromJson(Map<String, dynamic> json) =>
      _$TestGroupFromJson(json);
}

/// {@template test_metadata}
/// Test metadata regarding whether the test was skipped and the reason.
/// {@endtemplate}
@freezed
class TestMetadata with _$TestMetadata {
  /// {@macro test_metadata}
  const factory TestMetadata({
    /// Whether the test was skipped.
    required bool skip,

    /// The reason the tests was skipped, or `null` if it wasn't skipped.
    required String? skipReason,
  }) = _TestMetadata;

  /// {@macro test_metadata}
  factory TestMetadata.fromJson(Map<String, dynamic> json) =>
      _$TestMetadataFromJson(json);
}

/// {@template test}
/// A single test case. The test's ID is unique in the context of this test run.
/// It's used elsewhere in the protocol to refer to this test
/// without including its full representation.
/// {@endtemplate}
@freezed
class Test with _$Test {
  /// {@macro test}
  const factory Test({
    /// An opaque ID for the test.
    required int id,

    /// The name of the test, including prefixes from any containing groups.
    required String name,

    /// The ID of the suite containing this test.
    required int suiteID,

    /// The IDs of groups containing this test, in order from outermost to
    /// innermost.
    required List<int> groupIDs,

    /// The (1-based) line on which the test was defined, or `null`.
    required int? line,

    /// The (1-based) column on which the test was defined, or `null`.
    required int? column,

    /// The URL for the file in which the test was defined, or `null`.
    required String? url,

    /// The (1-based) line in the original test suite from which the test
    /// originated.
    ///
    /// Will only be present if `root_url` is different from `url`.
    required int? rootLine,

    /// The (1-based) line on in the original test suite from which the test
    /// originated.
    ///
    /// Will only be present if `root_url` is different from `url`.
    required int? rootColumn,

    /// The URL for the original test suite in which the test was defined.
    ///
    /// Will only be present if different from `url`.
    required String? rootUrl,

    /// This field is deprecated and should not be used.
    required TestMetadata metadata,
  }) = _Test;

  /// {@macro test}
  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);
}
