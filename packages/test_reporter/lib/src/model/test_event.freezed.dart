// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestEvent _$TestEventFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'start':
      return TestStartRunnerEvent.fromJson(json);
    case 'allSuites':
      return TestAllSuitesEvent.fromJson(json);
    case 'suite':
      return TestSuiteEvent.fromJson(json);
    case 'debug':
      return TestDebugEvent.fromJson(json);
    case 'group':
      return TestGroupEvent.fromJson(json);
    case 'testStart':
      return TestStartEvent.fromJson(json);
    case 'print':
      return TestMessageEvent.fromJson(json);
    case 'error':
      return TestErrorEvent.fromJson(json);
    case 'testDone':
      return TestDoneEvent.fromJson(json);
    case 'done':
      return TestRunnerDoneEvent.fromJson(json);
    case 'exit':
      return TestExitEvent.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'TestEvent', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$TestEvent {
  /// {@template test_event.time}
  /// The time (in milliseconds) that has elapsed since the test runner started.
  /// {@endtemplate}
  int get time => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)
        start,
    required TResult Function(int count, int time) allSuites,
    required TResult Function(TestSuite suite, int time) suite,
    required TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)
        debug,
    required TResult Function(TestGroup group, int time) group,
    required TResult Function(Test test, int time) startTest,
    required TResult Function(
            int testID, String messageType, String message, int time)
        message,
    required TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)
        error,
    required TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)
        testDone,
    required TResult Function(bool? success, int time) done,
    required TResult Function(int exitCode, int time) exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult? Function(int count, int time)? allSuites,
    TResult? Function(TestSuite suite, int time)? suite,
    TResult? Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult? Function(TestGroup group, int time)? group,
    TResult? Function(Test test, int time)? startTest,
    TResult? Function(int testID, String messageType, String message, int time)?
        message,
    TResult? Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult? Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult? Function(bool? success, int time)? done,
    TResult? Function(int exitCode, int time)? exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult Function(int count, int time)? allSuites,
    TResult Function(TestSuite suite, int time)? suite,
    TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult Function(TestGroup group, int time)? group,
    TResult Function(Test test, int time)? startTest,
    TResult Function(int testID, String messageType, String message, int time)?
        message,
    TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult Function(bool? success, int time)? done,
    TResult Function(int exitCode, int time)? exit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestStartRunnerEvent value) start,
    required TResult Function(TestAllSuitesEvent value) allSuites,
    required TResult Function(TestSuiteEvent value) suite,
    required TResult Function(TestDebugEvent value) debug,
    required TResult Function(TestGroupEvent value) group,
    required TResult Function(TestStartEvent value) startTest,
    required TResult Function(TestMessageEvent value) message,
    required TResult Function(TestErrorEvent value) error,
    required TResult Function(TestDoneEvent value) testDone,
    required TResult Function(TestRunnerDoneEvent value) done,
    required TResult Function(TestExitEvent value) exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TestStartRunnerEvent value)? start,
    TResult? Function(TestAllSuitesEvent value)? allSuites,
    TResult? Function(TestSuiteEvent value)? suite,
    TResult? Function(TestDebugEvent value)? debug,
    TResult? Function(TestGroupEvent value)? group,
    TResult? Function(TestStartEvent value)? startTest,
    TResult? Function(TestMessageEvent value)? message,
    TResult? Function(TestErrorEvent value)? error,
    TResult? Function(TestDoneEvent value)? testDone,
    TResult? Function(TestRunnerDoneEvent value)? done,
    TResult? Function(TestExitEvent value)? exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStartRunnerEvent value)? start,
    TResult Function(TestAllSuitesEvent value)? allSuites,
    TResult Function(TestSuiteEvent value)? suite,
    TResult Function(TestDebugEvent value)? debug,
    TResult Function(TestGroupEvent value)? group,
    TResult Function(TestStartEvent value)? startTest,
    TResult Function(TestMessageEvent value)? message,
    TResult Function(TestErrorEvent value)? error,
    TResult Function(TestDoneEvent value)? testDone,
    TResult Function(TestRunnerDoneEvent value)? done,
    TResult Function(TestExitEvent value)? exit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this TestEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestEventCopyWith<TestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestEventCopyWith<$Res> {
  factory $TestEventCopyWith(TestEvent value, $Res Function(TestEvent) then) =
      _$TestEventCopyWithImpl<$Res, TestEvent>;
  @useResult
  $Res call({int time});
}

/// @nodoc
class _$TestEventCopyWithImpl<$Res, $Val extends TestEvent>
    implements $TestEventCopyWith<$Res> {
  _$TestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestStartRunnerEventImplCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory _$$TestStartRunnerEventImplCopyWith(_$TestStartRunnerEventImpl value,
          $Res Function(_$TestStartRunnerEventImpl) then) =
      __$$TestStartRunnerEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String protocolVersion, String? runnerVersion, int pid, int time});
}

/// @nodoc
class __$$TestStartRunnerEventImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$TestStartRunnerEventImpl>
    implements _$$TestStartRunnerEventImplCopyWith<$Res> {
  __$$TestStartRunnerEventImplCopyWithImpl(_$TestStartRunnerEventImpl _value,
      $Res Function(_$TestStartRunnerEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protocolVersion = null,
    Object? runnerVersion = freezed,
    Object? pid = null,
    Object? time = null,
  }) {
    return _then(_$TestStartRunnerEventImpl(
      protocolVersion: null == protocolVersion
          ? _value.protocolVersion
          : protocolVersion // ignore: cast_nullable_to_non_nullable
              as String,
      runnerVersion: freezed == runnerVersion
          ? _value.runnerVersion
          : runnerVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      pid: null == pid
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestStartRunnerEventImpl implements TestStartRunnerEvent {
  const _$TestStartRunnerEventImpl(
      {required this.protocolVersion,
      required this.runnerVersion,
      required this.pid,
      required this.time,
      final String? $type})
      : $type = $type ?? 'start';

  factory _$TestStartRunnerEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestStartRunnerEventImplFromJson(json);

  /// The version of the JSON reporter protocol being used.
  ///
  /// This is a semantic version, but it reflects only the version of the
  /// protocol—it's not identical to the version of the test runner itself.
  @override
  final String protocolVersion;

  /// The version of the test runner being used.
  ///
  /// This is null if for some reason the version couldn't be loaded.
  @override
  final String? runnerVersion;

  /// The pid of the VM process running the tests.
  @override
  final int pid;

  /// {@template test_event.time}
  /// The time (in milliseconds) that has elapsed since the test runner started.
  /// {@endtemplate}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TestEvent.start(protocolVersion: $protocolVersion, runnerVersion: $runnerVersion, pid: $pid, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestStartRunnerEventImpl &&
            (identical(other.protocolVersion, protocolVersion) ||
                other.protocolVersion == protocolVersion) &&
            (identical(other.runnerVersion, runnerVersion) ||
                other.runnerVersion == runnerVersion) &&
            (identical(other.pid, pid) || other.pid == pid) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, protocolVersion, runnerVersion, pid, time);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestStartRunnerEventImplCopyWith<_$TestStartRunnerEventImpl>
      get copyWith =>
          __$$TestStartRunnerEventImplCopyWithImpl<_$TestStartRunnerEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)
        start,
    required TResult Function(int count, int time) allSuites,
    required TResult Function(TestSuite suite, int time) suite,
    required TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)
        debug,
    required TResult Function(TestGroup group, int time) group,
    required TResult Function(Test test, int time) startTest,
    required TResult Function(
            int testID, String messageType, String message, int time)
        message,
    required TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)
        error,
    required TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)
        testDone,
    required TResult Function(bool? success, int time) done,
    required TResult Function(int exitCode, int time) exit,
  }) {
    return start(protocolVersion, runnerVersion, pid, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult? Function(int count, int time)? allSuites,
    TResult? Function(TestSuite suite, int time)? suite,
    TResult? Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult? Function(TestGroup group, int time)? group,
    TResult? Function(Test test, int time)? startTest,
    TResult? Function(int testID, String messageType, String message, int time)?
        message,
    TResult? Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult? Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult? Function(bool? success, int time)? done,
    TResult? Function(int exitCode, int time)? exit,
  }) {
    return start?.call(protocolVersion, runnerVersion, pid, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult Function(int count, int time)? allSuites,
    TResult Function(TestSuite suite, int time)? suite,
    TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult Function(TestGroup group, int time)? group,
    TResult Function(Test test, int time)? startTest,
    TResult Function(int testID, String messageType, String message, int time)?
        message,
    TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult Function(bool? success, int time)? done,
    TResult Function(int exitCode, int time)? exit,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(protocolVersion, runnerVersion, pid, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestStartRunnerEvent value) start,
    required TResult Function(TestAllSuitesEvent value) allSuites,
    required TResult Function(TestSuiteEvent value) suite,
    required TResult Function(TestDebugEvent value) debug,
    required TResult Function(TestGroupEvent value) group,
    required TResult Function(TestStartEvent value) startTest,
    required TResult Function(TestMessageEvent value) message,
    required TResult Function(TestErrorEvent value) error,
    required TResult Function(TestDoneEvent value) testDone,
    required TResult Function(TestRunnerDoneEvent value) done,
    required TResult Function(TestExitEvent value) exit,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TestStartRunnerEvent value)? start,
    TResult? Function(TestAllSuitesEvent value)? allSuites,
    TResult? Function(TestSuiteEvent value)? suite,
    TResult? Function(TestDebugEvent value)? debug,
    TResult? Function(TestGroupEvent value)? group,
    TResult? Function(TestStartEvent value)? startTest,
    TResult? Function(TestMessageEvent value)? message,
    TResult? Function(TestErrorEvent value)? error,
    TResult? Function(TestDoneEvent value)? testDone,
    TResult? Function(TestRunnerDoneEvent value)? done,
    TResult? Function(TestExitEvent value)? exit,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStartRunnerEvent value)? start,
    TResult Function(TestAllSuitesEvent value)? allSuites,
    TResult Function(TestSuiteEvent value)? suite,
    TResult Function(TestDebugEvent value)? debug,
    TResult Function(TestGroupEvent value)? group,
    TResult Function(TestStartEvent value)? startTest,
    TResult Function(TestMessageEvent value)? message,
    TResult Function(TestErrorEvent value)? error,
    TResult Function(TestDoneEvent value)? testDone,
    TResult Function(TestRunnerDoneEvent value)? done,
    TResult Function(TestExitEvent value)? exit,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TestStartRunnerEventImplToJson(
      this,
    );
  }
}

abstract class TestStartRunnerEvent implements TestEvent {
  const factory TestStartRunnerEvent(
      {required final String protocolVersion,
      required final String? runnerVersion,
      required final int pid,
      required final int time}) = _$TestStartRunnerEventImpl;

  factory TestStartRunnerEvent.fromJson(Map<String, dynamic> json) =
      _$TestStartRunnerEventImpl.fromJson;

  /// The version of the JSON reporter protocol being used.
  ///
  /// This is a semantic version, but it reflects only the version of the
  /// protocol—it's not identical to the version of the test runner itself.
  String get protocolVersion;

  /// The version of the test runner being used.
  ///
  /// This is null if for some reason the version couldn't be loaded.
  String? get runnerVersion;

  /// The pid of the VM process running the tests.
  int get pid;

  /// {@template test_event.time}
  /// The time (in milliseconds) that has elapsed since the test runner started.
  /// {@endtemplate}
  @override
  int get time;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestStartRunnerEventImplCopyWith<_$TestStartRunnerEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TestAllSuitesEventImplCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory _$$TestAllSuitesEventImplCopyWith(_$TestAllSuitesEventImpl value,
          $Res Function(_$TestAllSuitesEventImpl) then) =
      __$$TestAllSuitesEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int time});
}

/// @nodoc
class __$$TestAllSuitesEventImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$TestAllSuitesEventImpl>
    implements _$$TestAllSuitesEventImplCopyWith<$Res> {
  __$$TestAllSuitesEventImplCopyWithImpl(_$TestAllSuitesEventImpl _value,
      $Res Function(_$TestAllSuitesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? time = null,
  }) {
    return _then(_$TestAllSuitesEventImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestAllSuitesEventImpl implements TestAllSuitesEvent {
  const _$TestAllSuitesEventImpl(
      {required this.count, required this.time, final String? $type})
      : $type = $type ?? 'allSuites';

  factory _$TestAllSuitesEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestAllSuitesEventImplFromJson(json);

  /// The total number of suites that will be loaded.
  @override
  final int count;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TestEvent.allSuites(count: $count, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestAllSuitesEventImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, time);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestAllSuitesEventImplCopyWith<_$TestAllSuitesEventImpl> get copyWith =>
      __$$TestAllSuitesEventImplCopyWithImpl<_$TestAllSuitesEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)
        start,
    required TResult Function(int count, int time) allSuites,
    required TResult Function(TestSuite suite, int time) suite,
    required TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)
        debug,
    required TResult Function(TestGroup group, int time) group,
    required TResult Function(Test test, int time) startTest,
    required TResult Function(
            int testID, String messageType, String message, int time)
        message,
    required TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)
        error,
    required TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)
        testDone,
    required TResult Function(bool? success, int time) done,
    required TResult Function(int exitCode, int time) exit,
  }) {
    return allSuites(count, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult? Function(int count, int time)? allSuites,
    TResult? Function(TestSuite suite, int time)? suite,
    TResult? Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult? Function(TestGroup group, int time)? group,
    TResult? Function(Test test, int time)? startTest,
    TResult? Function(int testID, String messageType, String message, int time)?
        message,
    TResult? Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult? Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult? Function(bool? success, int time)? done,
    TResult? Function(int exitCode, int time)? exit,
  }) {
    return allSuites?.call(count, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult Function(int count, int time)? allSuites,
    TResult Function(TestSuite suite, int time)? suite,
    TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult Function(TestGroup group, int time)? group,
    TResult Function(Test test, int time)? startTest,
    TResult Function(int testID, String messageType, String message, int time)?
        message,
    TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult Function(bool? success, int time)? done,
    TResult Function(int exitCode, int time)? exit,
    required TResult orElse(),
  }) {
    if (allSuites != null) {
      return allSuites(count, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestStartRunnerEvent value) start,
    required TResult Function(TestAllSuitesEvent value) allSuites,
    required TResult Function(TestSuiteEvent value) suite,
    required TResult Function(TestDebugEvent value) debug,
    required TResult Function(TestGroupEvent value) group,
    required TResult Function(TestStartEvent value) startTest,
    required TResult Function(TestMessageEvent value) message,
    required TResult Function(TestErrorEvent value) error,
    required TResult Function(TestDoneEvent value) testDone,
    required TResult Function(TestRunnerDoneEvent value) done,
    required TResult Function(TestExitEvent value) exit,
  }) {
    return allSuites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TestStartRunnerEvent value)? start,
    TResult? Function(TestAllSuitesEvent value)? allSuites,
    TResult? Function(TestSuiteEvent value)? suite,
    TResult? Function(TestDebugEvent value)? debug,
    TResult? Function(TestGroupEvent value)? group,
    TResult? Function(TestStartEvent value)? startTest,
    TResult? Function(TestMessageEvent value)? message,
    TResult? Function(TestErrorEvent value)? error,
    TResult? Function(TestDoneEvent value)? testDone,
    TResult? Function(TestRunnerDoneEvent value)? done,
    TResult? Function(TestExitEvent value)? exit,
  }) {
    return allSuites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStartRunnerEvent value)? start,
    TResult Function(TestAllSuitesEvent value)? allSuites,
    TResult Function(TestSuiteEvent value)? suite,
    TResult Function(TestDebugEvent value)? debug,
    TResult Function(TestGroupEvent value)? group,
    TResult Function(TestStartEvent value)? startTest,
    TResult Function(TestMessageEvent value)? message,
    TResult Function(TestErrorEvent value)? error,
    TResult Function(TestDoneEvent value)? testDone,
    TResult Function(TestRunnerDoneEvent value)? done,
    TResult Function(TestExitEvent value)? exit,
    required TResult orElse(),
  }) {
    if (allSuites != null) {
      return allSuites(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TestAllSuitesEventImplToJson(
      this,
    );
  }
}

abstract class TestAllSuitesEvent implements TestEvent {
  const factory TestAllSuitesEvent(
      {required final int count,
      required final int time}) = _$TestAllSuitesEventImpl;

  factory TestAllSuitesEvent.fromJson(Map<String, dynamic> json) =
      _$TestAllSuitesEventImpl.fromJson;

  /// The total number of suites that will be loaded.
  int get count;

  /// {@macro test_event.time}
  @override
  int get time;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestAllSuitesEventImplCopyWith<_$TestAllSuitesEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TestSuiteEventImplCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory _$$TestSuiteEventImplCopyWith(_$TestSuiteEventImpl value,
          $Res Function(_$TestSuiteEventImpl) then) =
      __$$TestSuiteEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TestSuite suite, int time});

  $TestSuiteCopyWith<$Res> get suite;
}

/// @nodoc
class __$$TestSuiteEventImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$TestSuiteEventImpl>
    implements _$$TestSuiteEventImplCopyWith<$Res> {
  __$$TestSuiteEventImplCopyWithImpl(
      _$TestSuiteEventImpl _value, $Res Function(_$TestSuiteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suite = null,
    Object? time = null,
  }) {
    return _then(_$TestSuiteEventImpl(
      suite: null == suite
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as TestSuite,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TestSuiteCopyWith<$Res> get suite {
    return $TestSuiteCopyWith<$Res>(_value.suite, (value) {
      return _then(_value.copyWith(suite: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TestSuiteEventImpl implements TestSuiteEvent {
  const _$TestSuiteEventImpl(
      {required this.suite, required this.time, final String? $type})
      : $type = $type ?? 'suite';

  factory _$TestSuiteEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestSuiteEventImplFromJson(json);

  /// Metadata about the suite.
  @override
  final TestSuite suite;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TestEvent.suite(suite: $suite, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestSuiteEventImpl &&
            (identical(other.suite, suite) || other.suite == suite) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, suite, time);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestSuiteEventImplCopyWith<_$TestSuiteEventImpl> get copyWith =>
      __$$TestSuiteEventImplCopyWithImpl<_$TestSuiteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)
        start,
    required TResult Function(int count, int time) allSuites,
    required TResult Function(TestSuite suite, int time) suite,
    required TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)
        debug,
    required TResult Function(TestGroup group, int time) group,
    required TResult Function(Test test, int time) startTest,
    required TResult Function(
            int testID, String messageType, String message, int time)
        message,
    required TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)
        error,
    required TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)
        testDone,
    required TResult Function(bool? success, int time) done,
    required TResult Function(int exitCode, int time) exit,
  }) {
    return suite(this.suite, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult? Function(int count, int time)? allSuites,
    TResult? Function(TestSuite suite, int time)? suite,
    TResult? Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult? Function(TestGroup group, int time)? group,
    TResult? Function(Test test, int time)? startTest,
    TResult? Function(int testID, String messageType, String message, int time)?
        message,
    TResult? Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult? Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult? Function(bool? success, int time)? done,
    TResult? Function(int exitCode, int time)? exit,
  }) {
    return suite?.call(this.suite, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult Function(int count, int time)? allSuites,
    TResult Function(TestSuite suite, int time)? suite,
    TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult Function(TestGroup group, int time)? group,
    TResult Function(Test test, int time)? startTest,
    TResult Function(int testID, String messageType, String message, int time)?
        message,
    TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult Function(bool? success, int time)? done,
    TResult Function(int exitCode, int time)? exit,
    required TResult orElse(),
  }) {
    if (suite != null) {
      return suite(this.suite, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestStartRunnerEvent value) start,
    required TResult Function(TestAllSuitesEvent value) allSuites,
    required TResult Function(TestSuiteEvent value) suite,
    required TResult Function(TestDebugEvent value) debug,
    required TResult Function(TestGroupEvent value) group,
    required TResult Function(TestStartEvent value) startTest,
    required TResult Function(TestMessageEvent value) message,
    required TResult Function(TestErrorEvent value) error,
    required TResult Function(TestDoneEvent value) testDone,
    required TResult Function(TestRunnerDoneEvent value) done,
    required TResult Function(TestExitEvent value) exit,
  }) {
    return suite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TestStartRunnerEvent value)? start,
    TResult? Function(TestAllSuitesEvent value)? allSuites,
    TResult? Function(TestSuiteEvent value)? suite,
    TResult? Function(TestDebugEvent value)? debug,
    TResult? Function(TestGroupEvent value)? group,
    TResult? Function(TestStartEvent value)? startTest,
    TResult? Function(TestMessageEvent value)? message,
    TResult? Function(TestErrorEvent value)? error,
    TResult? Function(TestDoneEvent value)? testDone,
    TResult? Function(TestRunnerDoneEvent value)? done,
    TResult? Function(TestExitEvent value)? exit,
  }) {
    return suite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStartRunnerEvent value)? start,
    TResult Function(TestAllSuitesEvent value)? allSuites,
    TResult Function(TestSuiteEvent value)? suite,
    TResult Function(TestDebugEvent value)? debug,
    TResult Function(TestGroupEvent value)? group,
    TResult Function(TestStartEvent value)? startTest,
    TResult Function(TestMessageEvent value)? message,
    TResult Function(TestErrorEvent value)? error,
    TResult Function(TestDoneEvent value)? testDone,
    TResult Function(TestRunnerDoneEvent value)? done,
    TResult Function(TestExitEvent value)? exit,
    required TResult orElse(),
  }) {
    if (suite != null) {
      return suite(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TestSuiteEventImplToJson(
      this,
    );
  }
}

abstract class TestSuiteEvent implements TestEvent {
  const factory TestSuiteEvent(
      {required final TestSuite suite,
      required final int time}) = _$TestSuiteEventImpl;

  factory TestSuiteEvent.fromJson(Map<String, dynamic> json) =
      _$TestSuiteEventImpl.fromJson;

  /// Metadata about the suite.
  TestSuite get suite;

  /// {@macro test_event.time}
  @override
  int get time;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestSuiteEventImplCopyWith<_$TestSuiteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TestDebugEventImplCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory _$$TestDebugEventImplCopyWith(_$TestDebugEventImpl value,
          $Res Function(_$TestDebugEventImpl) then) =
      __$$TestDebugEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int suiteID, String? observatory, String? remoteDebugger, int time});
}

/// @nodoc
class __$$TestDebugEventImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$TestDebugEventImpl>
    implements _$$TestDebugEventImplCopyWith<$Res> {
  __$$TestDebugEventImplCopyWithImpl(
      _$TestDebugEventImpl _value, $Res Function(_$TestDebugEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suiteID = null,
    Object? observatory = freezed,
    Object? remoteDebugger = freezed,
    Object? time = null,
  }) {
    return _then(_$TestDebugEventImpl(
      suiteID: null == suiteID
          ? _value.suiteID
          : suiteID // ignore: cast_nullable_to_non_nullable
              as int,
      observatory: freezed == observatory
          ? _value.observatory
          : observatory // ignore: cast_nullable_to_non_nullable
              as String?,
      remoteDebugger: freezed == remoteDebugger
          ? _value.remoteDebugger
          : remoteDebugger // ignore: cast_nullable_to_non_nullable
              as String?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestDebugEventImpl implements TestDebugEvent {
  const _$TestDebugEventImpl(
      {required this.suiteID,
      required this.observatory,
      required this.remoteDebugger,
      required this.time,
      final String? $type})
      : $type = $type ?? 'debug';

  factory _$TestDebugEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestDebugEventImplFromJson(json);

  /// The suite for which debug information is reported.
  @override
  final int suiteID;

  /// The HTTP URL for the Dart Observatory, or `null` if the Observatory isn't
  /// available for this suite.
  @override
  final String? observatory;

  /// The HTTP URL for the remote debugger for this suite's host page, or `null`
  /// if no remote debugger is available for this suite.
  @override
  final String? remoteDebugger;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TestEvent.debug(suiteID: $suiteID, observatory: $observatory, remoteDebugger: $remoteDebugger, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestDebugEventImpl &&
            (identical(other.suiteID, suiteID) || other.suiteID == suiteID) &&
            (identical(other.observatory, observatory) ||
                other.observatory == observatory) &&
            (identical(other.remoteDebugger, remoteDebugger) ||
                other.remoteDebugger == remoteDebugger) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, suiteID, observatory, remoteDebugger, time);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestDebugEventImplCopyWith<_$TestDebugEventImpl> get copyWith =>
      __$$TestDebugEventImplCopyWithImpl<_$TestDebugEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)
        start,
    required TResult Function(int count, int time) allSuites,
    required TResult Function(TestSuite suite, int time) suite,
    required TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)
        debug,
    required TResult Function(TestGroup group, int time) group,
    required TResult Function(Test test, int time) startTest,
    required TResult Function(
            int testID, String messageType, String message, int time)
        message,
    required TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)
        error,
    required TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)
        testDone,
    required TResult Function(bool? success, int time) done,
    required TResult Function(int exitCode, int time) exit,
  }) {
    return debug(suiteID, observatory, remoteDebugger, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult? Function(int count, int time)? allSuites,
    TResult? Function(TestSuite suite, int time)? suite,
    TResult? Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult? Function(TestGroup group, int time)? group,
    TResult? Function(Test test, int time)? startTest,
    TResult? Function(int testID, String messageType, String message, int time)?
        message,
    TResult? Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult? Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult? Function(bool? success, int time)? done,
    TResult? Function(int exitCode, int time)? exit,
  }) {
    return debug?.call(suiteID, observatory, remoteDebugger, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult Function(int count, int time)? allSuites,
    TResult Function(TestSuite suite, int time)? suite,
    TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult Function(TestGroup group, int time)? group,
    TResult Function(Test test, int time)? startTest,
    TResult Function(int testID, String messageType, String message, int time)?
        message,
    TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult Function(bool? success, int time)? done,
    TResult Function(int exitCode, int time)? exit,
    required TResult orElse(),
  }) {
    if (debug != null) {
      return debug(suiteID, observatory, remoteDebugger, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestStartRunnerEvent value) start,
    required TResult Function(TestAllSuitesEvent value) allSuites,
    required TResult Function(TestSuiteEvent value) suite,
    required TResult Function(TestDebugEvent value) debug,
    required TResult Function(TestGroupEvent value) group,
    required TResult Function(TestStartEvent value) startTest,
    required TResult Function(TestMessageEvent value) message,
    required TResult Function(TestErrorEvent value) error,
    required TResult Function(TestDoneEvent value) testDone,
    required TResult Function(TestRunnerDoneEvent value) done,
    required TResult Function(TestExitEvent value) exit,
  }) {
    return debug(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TestStartRunnerEvent value)? start,
    TResult? Function(TestAllSuitesEvent value)? allSuites,
    TResult? Function(TestSuiteEvent value)? suite,
    TResult? Function(TestDebugEvent value)? debug,
    TResult? Function(TestGroupEvent value)? group,
    TResult? Function(TestStartEvent value)? startTest,
    TResult? Function(TestMessageEvent value)? message,
    TResult? Function(TestErrorEvent value)? error,
    TResult? Function(TestDoneEvent value)? testDone,
    TResult? Function(TestRunnerDoneEvent value)? done,
    TResult? Function(TestExitEvent value)? exit,
  }) {
    return debug?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStartRunnerEvent value)? start,
    TResult Function(TestAllSuitesEvent value)? allSuites,
    TResult Function(TestSuiteEvent value)? suite,
    TResult Function(TestDebugEvent value)? debug,
    TResult Function(TestGroupEvent value)? group,
    TResult Function(TestStartEvent value)? startTest,
    TResult Function(TestMessageEvent value)? message,
    TResult Function(TestErrorEvent value)? error,
    TResult Function(TestDoneEvent value)? testDone,
    TResult Function(TestRunnerDoneEvent value)? done,
    TResult Function(TestExitEvent value)? exit,
    required TResult orElse(),
  }) {
    if (debug != null) {
      return debug(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TestDebugEventImplToJson(
      this,
    );
  }
}

abstract class TestDebugEvent implements TestEvent {
  const factory TestDebugEvent(
      {required final int suiteID,
      required final String? observatory,
      required final String? remoteDebugger,
      required final int time}) = _$TestDebugEventImpl;

  factory TestDebugEvent.fromJson(Map<String, dynamic> json) =
      _$TestDebugEventImpl.fromJson;

  /// The suite for which debug information is reported.
  int get suiteID;

  /// The HTTP URL for the Dart Observatory, or `null` if the Observatory isn't
  /// available for this suite.
  String? get observatory;

  /// The HTTP URL for the remote debugger for this suite's host page, or `null`
  /// if no remote debugger is available for this suite.
  String? get remoteDebugger;

  /// {@macro test_event.time}
  @override
  int get time;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestDebugEventImplCopyWith<_$TestDebugEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TestGroupEventImplCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory _$$TestGroupEventImplCopyWith(_$TestGroupEventImpl value,
          $Res Function(_$TestGroupEventImpl) then) =
      __$$TestGroupEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TestGroup group, int time});

  $TestGroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$TestGroupEventImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$TestGroupEventImpl>
    implements _$$TestGroupEventImplCopyWith<$Res> {
  __$$TestGroupEventImplCopyWithImpl(
      _$TestGroupEventImpl _value, $Res Function(_$TestGroupEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? time = null,
  }) {
    return _then(_$TestGroupEventImpl(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as TestGroup,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TestGroupCopyWith<$Res> get group {
    return $TestGroupCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TestGroupEventImpl implements TestGroupEvent {
  const _$TestGroupEventImpl(
      {required this.group, required this.time, final String? $type})
      : $type = $type ?? 'group';

  factory _$TestGroupEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestGroupEventImplFromJson(json);

  /// Metadata about the group.
  @override
  final TestGroup group;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TestEvent.group(group: $group, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestGroupEventImpl &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, group, time);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestGroupEventImplCopyWith<_$TestGroupEventImpl> get copyWith =>
      __$$TestGroupEventImplCopyWithImpl<_$TestGroupEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)
        start,
    required TResult Function(int count, int time) allSuites,
    required TResult Function(TestSuite suite, int time) suite,
    required TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)
        debug,
    required TResult Function(TestGroup group, int time) group,
    required TResult Function(Test test, int time) startTest,
    required TResult Function(
            int testID, String messageType, String message, int time)
        message,
    required TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)
        error,
    required TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)
        testDone,
    required TResult Function(bool? success, int time) done,
    required TResult Function(int exitCode, int time) exit,
  }) {
    return group(this.group, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult? Function(int count, int time)? allSuites,
    TResult? Function(TestSuite suite, int time)? suite,
    TResult? Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult? Function(TestGroup group, int time)? group,
    TResult? Function(Test test, int time)? startTest,
    TResult? Function(int testID, String messageType, String message, int time)?
        message,
    TResult? Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult? Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult? Function(bool? success, int time)? done,
    TResult? Function(int exitCode, int time)? exit,
  }) {
    return group?.call(this.group, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult Function(int count, int time)? allSuites,
    TResult Function(TestSuite suite, int time)? suite,
    TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult Function(TestGroup group, int time)? group,
    TResult Function(Test test, int time)? startTest,
    TResult Function(int testID, String messageType, String message, int time)?
        message,
    TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult Function(bool? success, int time)? done,
    TResult Function(int exitCode, int time)? exit,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this.group, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestStartRunnerEvent value) start,
    required TResult Function(TestAllSuitesEvent value) allSuites,
    required TResult Function(TestSuiteEvent value) suite,
    required TResult Function(TestDebugEvent value) debug,
    required TResult Function(TestGroupEvent value) group,
    required TResult Function(TestStartEvent value) startTest,
    required TResult Function(TestMessageEvent value) message,
    required TResult Function(TestErrorEvent value) error,
    required TResult Function(TestDoneEvent value) testDone,
    required TResult Function(TestRunnerDoneEvent value) done,
    required TResult Function(TestExitEvent value) exit,
  }) {
    return group(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TestStartRunnerEvent value)? start,
    TResult? Function(TestAllSuitesEvent value)? allSuites,
    TResult? Function(TestSuiteEvent value)? suite,
    TResult? Function(TestDebugEvent value)? debug,
    TResult? Function(TestGroupEvent value)? group,
    TResult? Function(TestStartEvent value)? startTest,
    TResult? Function(TestMessageEvent value)? message,
    TResult? Function(TestErrorEvent value)? error,
    TResult? Function(TestDoneEvent value)? testDone,
    TResult? Function(TestRunnerDoneEvent value)? done,
    TResult? Function(TestExitEvent value)? exit,
  }) {
    return group?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStartRunnerEvent value)? start,
    TResult Function(TestAllSuitesEvent value)? allSuites,
    TResult Function(TestSuiteEvent value)? suite,
    TResult Function(TestDebugEvent value)? debug,
    TResult Function(TestGroupEvent value)? group,
    TResult Function(TestStartEvent value)? startTest,
    TResult Function(TestMessageEvent value)? message,
    TResult Function(TestErrorEvent value)? error,
    TResult Function(TestDoneEvent value)? testDone,
    TResult Function(TestRunnerDoneEvent value)? done,
    TResult Function(TestExitEvent value)? exit,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TestGroupEventImplToJson(
      this,
    );
  }
}

abstract class TestGroupEvent implements TestEvent {
  const factory TestGroupEvent(
      {required final TestGroup group,
      required final int time}) = _$TestGroupEventImpl;

  factory TestGroupEvent.fromJson(Map<String, dynamic> json) =
      _$TestGroupEventImpl.fromJson;

  /// Metadata about the group.
  TestGroup get group;

  /// {@macro test_event.time}
  @override
  int get time;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestGroupEventImplCopyWith<_$TestGroupEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TestStartEventImplCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory _$$TestStartEventImplCopyWith(_$TestStartEventImpl value,
          $Res Function(_$TestStartEventImpl) then) =
      __$$TestStartEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Test test, int time});

  $TestCopyWith<$Res> get test;
}

/// @nodoc
class __$$TestStartEventImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$TestStartEventImpl>
    implements _$$TestStartEventImplCopyWith<$Res> {
  __$$TestStartEventImplCopyWithImpl(
      _$TestStartEventImpl _value, $Res Function(_$TestStartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? test = null,
    Object? time = null,
  }) {
    return _then(_$TestStartEventImpl(
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as Test,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TestCopyWith<$Res> get test {
    return $TestCopyWith<$Res>(_value.test, (value) {
      return _then(_value.copyWith(test: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TestStartEventImpl implements TestStartEvent {
  const _$TestStartEventImpl(
      {required this.test, required this.time, final String? $type})
      : $type = $type ?? 'testStart';

  factory _$TestStartEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestStartEventImplFromJson(json);

  /// Metadata about the test that started.
  @override
  final Test test;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TestEvent.startTest(test: $test, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestStartEventImpl &&
            (identical(other.test, test) || other.test == test) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, test, time);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestStartEventImplCopyWith<_$TestStartEventImpl> get copyWith =>
      __$$TestStartEventImplCopyWithImpl<_$TestStartEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)
        start,
    required TResult Function(int count, int time) allSuites,
    required TResult Function(TestSuite suite, int time) suite,
    required TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)
        debug,
    required TResult Function(TestGroup group, int time) group,
    required TResult Function(Test test, int time) startTest,
    required TResult Function(
            int testID, String messageType, String message, int time)
        message,
    required TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)
        error,
    required TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)
        testDone,
    required TResult Function(bool? success, int time) done,
    required TResult Function(int exitCode, int time) exit,
  }) {
    return startTest(test, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult? Function(int count, int time)? allSuites,
    TResult? Function(TestSuite suite, int time)? suite,
    TResult? Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult? Function(TestGroup group, int time)? group,
    TResult? Function(Test test, int time)? startTest,
    TResult? Function(int testID, String messageType, String message, int time)?
        message,
    TResult? Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult? Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult? Function(bool? success, int time)? done,
    TResult? Function(int exitCode, int time)? exit,
  }) {
    return startTest?.call(test, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult Function(int count, int time)? allSuites,
    TResult Function(TestSuite suite, int time)? suite,
    TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult Function(TestGroup group, int time)? group,
    TResult Function(Test test, int time)? startTest,
    TResult Function(int testID, String messageType, String message, int time)?
        message,
    TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult Function(bool? success, int time)? done,
    TResult Function(int exitCode, int time)? exit,
    required TResult orElse(),
  }) {
    if (startTest != null) {
      return startTest(test, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestStartRunnerEvent value) start,
    required TResult Function(TestAllSuitesEvent value) allSuites,
    required TResult Function(TestSuiteEvent value) suite,
    required TResult Function(TestDebugEvent value) debug,
    required TResult Function(TestGroupEvent value) group,
    required TResult Function(TestStartEvent value) startTest,
    required TResult Function(TestMessageEvent value) message,
    required TResult Function(TestErrorEvent value) error,
    required TResult Function(TestDoneEvent value) testDone,
    required TResult Function(TestRunnerDoneEvent value) done,
    required TResult Function(TestExitEvent value) exit,
  }) {
    return startTest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TestStartRunnerEvent value)? start,
    TResult? Function(TestAllSuitesEvent value)? allSuites,
    TResult? Function(TestSuiteEvent value)? suite,
    TResult? Function(TestDebugEvent value)? debug,
    TResult? Function(TestGroupEvent value)? group,
    TResult? Function(TestStartEvent value)? startTest,
    TResult? Function(TestMessageEvent value)? message,
    TResult? Function(TestErrorEvent value)? error,
    TResult? Function(TestDoneEvent value)? testDone,
    TResult? Function(TestRunnerDoneEvent value)? done,
    TResult? Function(TestExitEvent value)? exit,
  }) {
    return startTest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStartRunnerEvent value)? start,
    TResult Function(TestAllSuitesEvent value)? allSuites,
    TResult Function(TestSuiteEvent value)? suite,
    TResult Function(TestDebugEvent value)? debug,
    TResult Function(TestGroupEvent value)? group,
    TResult Function(TestStartEvent value)? startTest,
    TResult Function(TestMessageEvent value)? message,
    TResult Function(TestErrorEvent value)? error,
    TResult Function(TestDoneEvent value)? testDone,
    TResult Function(TestRunnerDoneEvent value)? done,
    TResult Function(TestExitEvent value)? exit,
    required TResult orElse(),
  }) {
    if (startTest != null) {
      return startTest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TestStartEventImplToJson(
      this,
    );
  }
}

abstract class TestStartEvent implements TestEvent {
  const factory TestStartEvent(
      {required final Test test,
      required final int time}) = _$TestStartEventImpl;

  factory TestStartEvent.fromJson(Map<String, dynamic> json) =
      _$TestStartEventImpl.fromJson;

  /// Metadata about the test that started.
  Test get test;

  /// {@macro test_event.time}
  @override
  int get time;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestStartEventImplCopyWith<_$TestStartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TestMessageEventImplCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory _$$TestMessageEventImplCopyWith(_$TestMessageEventImpl value,
          $Res Function(_$TestMessageEventImpl) then) =
      __$$TestMessageEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int testID, String messageType, String message, int time});
}

/// @nodoc
class __$$TestMessageEventImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$TestMessageEventImpl>
    implements _$$TestMessageEventImplCopyWith<$Res> {
  __$$TestMessageEventImplCopyWithImpl(_$TestMessageEventImpl _value,
      $Res Function(_$TestMessageEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testID = null,
    Object? messageType = null,
    Object? message = null,
    Object? time = null,
  }) {
    return _then(_$TestMessageEventImpl(
      testID: null == testID
          ? _value.testID
          : testID // ignore: cast_nullable_to_non_nullable
              as int,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestMessageEventImpl implements TestMessageEvent {
  const _$TestMessageEventImpl(
      {required this.testID,
      required this.messageType,
      required this.message,
      required this.time,
      final String? $type})
      : $type = $type ?? 'print';

  factory _$TestMessageEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestMessageEventImplFromJson(json);

  /// The ID of the test that printed a message.
  @override
  final int testID;

  /// The type of message being printed.
  @override
  final String messageType;

  /// The message that was printed.
  @override
  final String message;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TestEvent.message(testID: $testID, messageType: $messageType, message: $message, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestMessageEventImpl &&
            (identical(other.testID, testID) || other.testID == testID) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, testID, messageType, message, time);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestMessageEventImplCopyWith<_$TestMessageEventImpl> get copyWith =>
      __$$TestMessageEventImplCopyWithImpl<_$TestMessageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)
        start,
    required TResult Function(int count, int time) allSuites,
    required TResult Function(TestSuite suite, int time) suite,
    required TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)
        debug,
    required TResult Function(TestGroup group, int time) group,
    required TResult Function(Test test, int time) startTest,
    required TResult Function(
            int testID, String messageType, String message, int time)
        message,
    required TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)
        error,
    required TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)
        testDone,
    required TResult Function(bool? success, int time) done,
    required TResult Function(int exitCode, int time) exit,
  }) {
    return message(testID, messageType, this.message, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult? Function(int count, int time)? allSuites,
    TResult? Function(TestSuite suite, int time)? suite,
    TResult? Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult? Function(TestGroup group, int time)? group,
    TResult? Function(Test test, int time)? startTest,
    TResult? Function(int testID, String messageType, String message, int time)?
        message,
    TResult? Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult? Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult? Function(bool? success, int time)? done,
    TResult? Function(int exitCode, int time)? exit,
  }) {
    return message?.call(testID, messageType, this.message, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult Function(int count, int time)? allSuites,
    TResult Function(TestSuite suite, int time)? suite,
    TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult Function(TestGroup group, int time)? group,
    TResult Function(Test test, int time)? startTest,
    TResult Function(int testID, String messageType, String message, int time)?
        message,
    TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult Function(bool? success, int time)? done,
    TResult Function(int exitCode, int time)? exit,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(testID, messageType, this.message, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestStartRunnerEvent value) start,
    required TResult Function(TestAllSuitesEvent value) allSuites,
    required TResult Function(TestSuiteEvent value) suite,
    required TResult Function(TestDebugEvent value) debug,
    required TResult Function(TestGroupEvent value) group,
    required TResult Function(TestStartEvent value) startTest,
    required TResult Function(TestMessageEvent value) message,
    required TResult Function(TestErrorEvent value) error,
    required TResult Function(TestDoneEvent value) testDone,
    required TResult Function(TestRunnerDoneEvent value) done,
    required TResult Function(TestExitEvent value) exit,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TestStartRunnerEvent value)? start,
    TResult? Function(TestAllSuitesEvent value)? allSuites,
    TResult? Function(TestSuiteEvent value)? suite,
    TResult? Function(TestDebugEvent value)? debug,
    TResult? Function(TestGroupEvent value)? group,
    TResult? Function(TestStartEvent value)? startTest,
    TResult? Function(TestMessageEvent value)? message,
    TResult? Function(TestErrorEvent value)? error,
    TResult? Function(TestDoneEvent value)? testDone,
    TResult? Function(TestRunnerDoneEvent value)? done,
    TResult? Function(TestExitEvent value)? exit,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStartRunnerEvent value)? start,
    TResult Function(TestAllSuitesEvent value)? allSuites,
    TResult Function(TestSuiteEvent value)? suite,
    TResult Function(TestDebugEvent value)? debug,
    TResult Function(TestGroupEvent value)? group,
    TResult Function(TestStartEvent value)? startTest,
    TResult Function(TestMessageEvent value)? message,
    TResult Function(TestErrorEvent value)? error,
    TResult Function(TestDoneEvent value)? testDone,
    TResult Function(TestRunnerDoneEvent value)? done,
    TResult Function(TestExitEvent value)? exit,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TestMessageEventImplToJson(
      this,
    );
  }
}

abstract class TestMessageEvent implements TestEvent {
  const factory TestMessageEvent(
      {required final int testID,
      required final String messageType,
      required final String message,
      required final int time}) = _$TestMessageEventImpl;

  factory TestMessageEvent.fromJson(Map<String, dynamic> json) =
      _$TestMessageEventImpl.fromJson;

  /// The ID of the test that printed a message.
  int get testID;

  /// The type of message being printed.
  String get messageType;

  /// The message that was printed.
  String get message;

  /// {@macro test_event.time}
  @override
  int get time;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestMessageEventImplCopyWith<_$TestMessageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TestErrorEventImplCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory _$$TestErrorEventImplCopyWith(_$TestErrorEventImpl value,
          $Res Function(_$TestErrorEventImpl) then) =
      __$$TestErrorEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int testID, String error, String stackTrace, bool isFailure, int time});
}

/// @nodoc
class __$$TestErrorEventImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$TestErrorEventImpl>
    implements _$$TestErrorEventImplCopyWith<$Res> {
  __$$TestErrorEventImplCopyWithImpl(
      _$TestErrorEventImpl _value, $Res Function(_$TestErrorEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testID = null,
    Object? error = null,
    Object? stackTrace = null,
    Object? isFailure = null,
    Object? time = null,
  }) {
    return _then(_$TestErrorEventImpl(
      testID: null == testID
          ? _value.testID
          : testID // ignore: cast_nullable_to_non_nullable
              as int,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestErrorEventImpl implements TestErrorEvent {
  const _$TestErrorEventImpl(
      {required this.testID,
      required this.error,
      required this.stackTrace,
      required this.isFailure,
      required this.time,
      final String? $type})
      : $type = $type ?? 'error';

  factory _$TestErrorEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestErrorEventImplFromJson(json);

  /// The ID of the test that experienced the error.
  @override
  final int testID;

  /// The result of calling toString() on the error object.
  @override
  final String error;

  /// The error's stack trace, in the stack_trace package format.
  @override
  final String stackTrace;

  /// Whether the error was a TestFailure.
  @override
  final bool isFailure;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TestEvent.error(testID: $testID, error: $error, stackTrace: $stackTrace, isFailure: $isFailure, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestErrorEventImpl &&
            (identical(other.testID, testID) || other.testID == testID) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, testID, error, stackTrace, isFailure, time);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestErrorEventImplCopyWith<_$TestErrorEventImpl> get copyWith =>
      __$$TestErrorEventImplCopyWithImpl<_$TestErrorEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)
        start,
    required TResult Function(int count, int time) allSuites,
    required TResult Function(TestSuite suite, int time) suite,
    required TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)
        debug,
    required TResult Function(TestGroup group, int time) group,
    required TResult Function(Test test, int time) startTest,
    required TResult Function(
            int testID, String messageType, String message, int time)
        message,
    required TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)
        error,
    required TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)
        testDone,
    required TResult Function(bool? success, int time) done,
    required TResult Function(int exitCode, int time) exit,
  }) {
    return error(testID, this.error, stackTrace, isFailure, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult? Function(int count, int time)? allSuites,
    TResult? Function(TestSuite suite, int time)? suite,
    TResult? Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult? Function(TestGroup group, int time)? group,
    TResult? Function(Test test, int time)? startTest,
    TResult? Function(int testID, String messageType, String message, int time)?
        message,
    TResult? Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult? Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult? Function(bool? success, int time)? done,
    TResult? Function(int exitCode, int time)? exit,
  }) {
    return error?.call(testID, this.error, stackTrace, isFailure, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult Function(int count, int time)? allSuites,
    TResult Function(TestSuite suite, int time)? suite,
    TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult Function(TestGroup group, int time)? group,
    TResult Function(Test test, int time)? startTest,
    TResult Function(int testID, String messageType, String message, int time)?
        message,
    TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult Function(bool? success, int time)? done,
    TResult Function(int exitCode, int time)? exit,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(testID, this.error, stackTrace, isFailure, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestStartRunnerEvent value) start,
    required TResult Function(TestAllSuitesEvent value) allSuites,
    required TResult Function(TestSuiteEvent value) suite,
    required TResult Function(TestDebugEvent value) debug,
    required TResult Function(TestGroupEvent value) group,
    required TResult Function(TestStartEvent value) startTest,
    required TResult Function(TestMessageEvent value) message,
    required TResult Function(TestErrorEvent value) error,
    required TResult Function(TestDoneEvent value) testDone,
    required TResult Function(TestRunnerDoneEvent value) done,
    required TResult Function(TestExitEvent value) exit,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TestStartRunnerEvent value)? start,
    TResult? Function(TestAllSuitesEvent value)? allSuites,
    TResult? Function(TestSuiteEvent value)? suite,
    TResult? Function(TestDebugEvent value)? debug,
    TResult? Function(TestGroupEvent value)? group,
    TResult? Function(TestStartEvent value)? startTest,
    TResult? Function(TestMessageEvent value)? message,
    TResult? Function(TestErrorEvent value)? error,
    TResult? Function(TestDoneEvent value)? testDone,
    TResult? Function(TestRunnerDoneEvent value)? done,
    TResult? Function(TestExitEvent value)? exit,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStartRunnerEvent value)? start,
    TResult Function(TestAllSuitesEvent value)? allSuites,
    TResult Function(TestSuiteEvent value)? suite,
    TResult Function(TestDebugEvent value)? debug,
    TResult Function(TestGroupEvent value)? group,
    TResult Function(TestStartEvent value)? startTest,
    TResult Function(TestMessageEvent value)? message,
    TResult Function(TestErrorEvent value)? error,
    TResult Function(TestDoneEvent value)? testDone,
    TResult Function(TestRunnerDoneEvent value)? done,
    TResult Function(TestExitEvent value)? exit,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TestErrorEventImplToJson(
      this,
    );
  }
}

abstract class TestErrorEvent implements TestEvent {
  const factory TestErrorEvent(
      {required final int testID,
      required final String error,
      required final String stackTrace,
      required final bool isFailure,
      required final int time}) = _$TestErrorEventImpl;

  factory TestErrorEvent.fromJson(Map<String, dynamic> json) =
      _$TestErrorEventImpl.fromJson;

  /// The ID of the test that experienced the error.
  int get testID;

  /// The result of calling toString() on the error object.
  String get error;

  /// The error's stack trace, in the stack_trace package format.
  String get stackTrace;

  /// Whether the error was a TestFailure.
  bool get isFailure;

  /// {@macro test_event.time}
  @override
  int get time;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestErrorEventImplCopyWith<_$TestErrorEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TestDoneEventImplCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory _$$TestDoneEventImplCopyWith(
          _$TestDoneEventImpl value, $Res Function(_$TestDoneEventImpl) then) =
      __$$TestDoneEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int testID, TestResult result, bool hidden, bool skipped, int time});
}

/// @nodoc
class __$$TestDoneEventImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$TestDoneEventImpl>
    implements _$$TestDoneEventImplCopyWith<$Res> {
  __$$TestDoneEventImplCopyWithImpl(
      _$TestDoneEventImpl _value, $Res Function(_$TestDoneEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testID = null,
    Object? result = null,
    Object? hidden = null,
    Object? skipped = null,
    Object? time = null,
  }) {
    return _then(_$TestDoneEventImpl(
      testID: null == testID
          ? _value.testID
          : testID // ignore: cast_nullable_to_non_nullable
              as int,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TestResult,
      hidden: null == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool,
      skipped: null == skipped
          ? _value.skipped
          : skipped // ignore: cast_nullable_to_non_nullable
              as bool,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestDoneEventImpl implements TestDoneEvent {
  const _$TestDoneEventImpl(
      {required this.testID,
      required this.result,
      required this.hidden,
      required this.skipped,
      required this.time,
      final String? $type})
      : $type = $type ?? 'testDone';

  factory _$TestDoneEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestDoneEventImplFromJson(json);

  /// The ID of the test that completed.
  @override
  final int testID;

  /// The result of the test.
  @override
  final TestResult result;

  /// Whether the test's result should be hidden.
  @override
  final bool hidden;

  /// Whether the test (or some part of it) was skipped.
  @override
  final bool skipped;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TestEvent.testDone(testID: $testID, result: $result, hidden: $hidden, skipped: $skipped, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestDoneEventImpl &&
            (identical(other.testID, testID) || other.testID == testID) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.hidden, hidden) || other.hidden == hidden) &&
            (identical(other.skipped, skipped) || other.skipped == skipped) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, testID, result, hidden, skipped, time);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestDoneEventImplCopyWith<_$TestDoneEventImpl> get copyWith =>
      __$$TestDoneEventImplCopyWithImpl<_$TestDoneEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)
        start,
    required TResult Function(int count, int time) allSuites,
    required TResult Function(TestSuite suite, int time) suite,
    required TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)
        debug,
    required TResult Function(TestGroup group, int time) group,
    required TResult Function(Test test, int time) startTest,
    required TResult Function(
            int testID, String messageType, String message, int time)
        message,
    required TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)
        error,
    required TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)
        testDone,
    required TResult Function(bool? success, int time) done,
    required TResult Function(int exitCode, int time) exit,
  }) {
    return testDone(testID, result, hidden, skipped, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult? Function(int count, int time)? allSuites,
    TResult? Function(TestSuite suite, int time)? suite,
    TResult? Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult? Function(TestGroup group, int time)? group,
    TResult? Function(Test test, int time)? startTest,
    TResult? Function(int testID, String messageType, String message, int time)?
        message,
    TResult? Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult? Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult? Function(bool? success, int time)? done,
    TResult? Function(int exitCode, int time)? exit,
  }) {
    return testDone?.call(testID, result, hidden, skipped, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult Function(int count, int time)? allSuites,
    TResult Function(TestSuite suite, int time)? suite,
    TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult Function(TestGroup group, int time)? group,
    TResult Function(Test test, int time)? startTest,
    TResult Function(int testID, String messageType, String message, int time)?
        message,
    TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult Function(bool? success, int time)? done,
    TResult Function(int exitCode, int time)? exit,
    required TResult orElse(),
  }) {
    if (testDone != null) {
      return testDone(testID, result, hidden, skipped, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestStartRunnerEvent value) start,
    required TResult Function(TestAllSuitesEvent value) allSuites,
    required TResult Function(TestSuiteEvent value) suite,
    required TResult Function(TestDebugEvent value) debug,
    required TResult Function(TestGroupEvent value) group,
    required TResult Function(TestStartEvent value) startTest,
    required TResult Function(TestMessageEvent value) message,
    required TResult Function(TestErrorEvent value) error,
    required TResult Function(TestDoneEvent value) testDone,
    required TResult Function(TestRunnerDoneEvent value) done,
    required TResult Function(TestExitEvent value) exit,
  }) {
    return testDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TestStartRunnerEvent value)? start,
    TResult? Function(TestAllSuitesEvent value)? allSuites,
    TResult? Function(TestSuiteEvent value)? suite,
    TResult? Function(TestDebugEvent value)? debug,
    TResult? Function(TestGroupEvent value)? group,
    TResult? Function(TestStartEvent value)? startTest,
    TResult? Function(TestMessageEvent value)? message,
    TResult? Function(TestErrorEvent value)? error,
    TResult? Function(TestDoneEvent value)? testDone,
    TResult? Function(TestRunnerDoneEvent value)? done,
    TResult? Function(TestExitEvent value)? exit,
  }) {
    return testDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStartRunnerEvent value)? start,
    TResult Function(TestAllSuitesEvent value)? allSuites,
    TResult Function(TestSuiteEvent value)? suite,
    TResult Function(TestDebugEvent value)? debug,
    TResult Function(TestGroupEvent value)? group,
    TResult Function(TestStartEvent value)? startTest,
    TResult Function(TestMessageEvent value)? message,
    TResult Function(TestErrorEvent value)? error,
    TResult Function(TestDoneEvent value)? testDone,
    TResult Function(TestRunnerDoneEvent value)? done,
    TResult Function(TestExitEvent value)? exit,
    required TResult orElse(),
  }) {
    if (testDone != null) {
      return testDone(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TestDoneEventImplToJson(
      this,
    );
  }
}

abstract class TestDoneEvent implements TestEvent {
  const factory TestDoneEvent(
      {required final int testID,
      required final TestResult result,
      required final bool hidden,
      required final bool skipped,
      required final int time}) = _$TestDoneEventImpl;

  factory TestDoneEvent.fromJson(Map<String, dynamic> json) =
      _$TestDoneEventImpl.fromJson;

  /// The ID of the test that completed.
  int get testID;

  /// The result of the test.
  TestResult get result;

  /// Whether the test's result should be hidden.
  bool get hidden;

  /// Whether the test (or some part of it) was skipped.
  bool get skipped;

  /// {@macro test_event.time}
  @override
  int get time;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestDoneEventImplCopyWith<_$TestDoneEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TestRunnerDoneEventImplCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory _$$TestRunnerDoneEventImplCopyWith(_$TestRunnerDoneEventImpl value,
          $Res Function(_$TestRunnerDoneEventImpl) then) =
      __$$TestRunnerDoneEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, int time});
}

/// @nodoc
class __$$TestRunnerDoneEventImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$TestRunnerDoneEventImpl>
    implements _$$TestRunnerDoneEventImplCopyWith<$Res> {
  __$$TestRunnerDoneEventImplCopyWithImpl(_$TestRunnerDoneEventImpl _value,
      $Res Function(_$TestRunnerDoneEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? time = null,
  }) {
    return _then(_$TestRunnerDoneEventImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestRunnerDoneEventImpl implements TestRunnerDoneEvent {
  const _$TestRunnerDoneEventImpl(
      {required this.success, required this.time, final String? $type})
      : $type = $type ?? 'done';

  factory _$TestRunnerDoneEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestRunnerDoneEventImplFromJson(json);

  /// Whether all tests succeeded (or were skipped).
  ///
  /// Will be `null` if the test runner was close before all tests completed
  /// running.
  @override
  final bool? success;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TestEvent.done(success: $success, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestRunnerDoneEventImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, time);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestRunnerDoneEventImplCopyWith<_$TestRunnerDoneEventImpl> get copyWith =>
      __$$TestRunnerDoneEventImplCopyWithImpl<_$TestRunnerDoneEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)
        start,
    required TResult Function(int count, int time) allSuites,
    required TResult Function(TestSuite suite, int time) suite,
    required TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)
        debug,
    required TResult Function(TestGroup group, int time) group,
    required TResult Function(Test test, int time) startTest,
    required TResult Function(
            int testID, String messageType, String message, int time)
        message,
    required TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)
        error,
    required TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)
        testDone,
    required TResult Function(bool? success, int time) done,
    required TResult Function(int exitCode, int time) exit,
  }) {
    return done(success, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult? Function(int count, int time)? allSuites,
    TResult? Function(TestSuite suite, int time)? suite,
    TResult? Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult? Function(TestGroup group, int time)? group,
    TResult? Function(Test test, int time)? startTest,
    TResult? Function(int testID, String messageType, String message, int time)?
        message,
    TResult? Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult? Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult? Function(bool? success, int time)? done,
    TResult? Function(int exitCode, int time)? exit,
  }) {
    return done?.call(success, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult Function(int count, int time)? allSuites,
    TResult Function(TestSuite suite, int time)? suite,
    TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult Function(TestGroup group, int time)? group,
    TResult Function(Test test, int time)? startTest,
    TResult Function(int testID, String messageType, String message, int time)?
        message,
    TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult Function(bool? success, int time)? done,
    TResult Function(int exitCode, int time)? exit,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(success, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestStartRunnerEvent value) start,
    required TResult Function(TestAllSuitesEvent value) allSuites,
    required TResult Function(TestSuiteEvent value) suite,
    required TResult Function(TestDebugEvent value) debug,
    required TResult Function(TestGroupEvent value) group,
    required TResult Function(TestStartEvent value) startTest,
    required TResult Function(TestMessageEvent value) message,
    required TResult Function(TestErrorEvent value) error,
    required TResult Function(TestDoneEvent value) testDone,
    required TResult Function(TestRunnerDoneEvent value) done,
    required TResult Function(TestExitEvent value) exit,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TestStartRunnerEvent value)? start,
    TResult? Function(TestAllSuitesEvent value)? allSuites,
    TResult? Function(TestSuiteEvent value)? suite,
    TResult? Function(TestDebugEvent value)? debug,
    TResult? Function(TestGroupEvent value)? group,
    TResult? Function(TestStartEvent value)? startTest,
    TResult? Function(TestMessageEvent value)? message,
    TResult? Function(TestErrorEvent value)? error,
    TResult? Function(TestDoneEvent value)? testDone,
    TResult? Function(TestRunnerDoneEvent value)? done,
    TResult? Function(TestExitEvent value)? exit,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStartRunnerEvent value)? start,
    TResult Function(TestAllSuitesEvent value)? allSuites,
    TResult Function(TestSuiteEvent value)? suite,
    TResult Function(TestDebugEvent value)? debug,
    TResult Function(TestGroupEvent value)? group,
    TResult Function(TestStartEvent value)? startTest,
    TResult Function(TestMessageEvent value)? message,
    TResult Function(TestErrorEvent value)? error,
    TResult Function(TestDoneEvent value)? testDone,
    TResult Function(TestRunnerDoneEvent value)? done,
    TResult Function(TestExitEvent value)? exit,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TestRunnerDoneEventImplToJson(
      this,
    );
  }
}

abstract class TestRunnerDoneEvent implements TestEvent {
  const factory TestRunnerDoneEvent(
      {required final bool? success,
      required final int time}) = _$TestRunnerDoneEventImpl;

  factory TestRunnerDoneEvent.fromJson(Map<String, dynamic> json) =
      _$TestRunnerDoneEventImpl.fromJson;

  /// Whether all tests succeeded (or were skipped).
  ///
  /// Will be `null` if the test runner was close before all tests completed
  /// running.
  bool? get success;

  /// {@macro test_event.time}
  @override
  int get time;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestRunnerDoneEventImplCopyWith<_$TestRunnerDoneEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TestExitEventImplCopyWith<$Res>
    implements $TestEventCopyWith<$Res> {
  factory _$$TestExitEventImplCopyWith(
          _$TestExitEventImpl value, $Res Function(_$TestExitEventImpl) then) =
      __$$TestExitEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int exitCode, int time});
}

/// @nodoc
class __$$TestExitEventImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$TestExitEventImpl>
    implements _$$TestExitEventImplCopyWith<$Res> {
  __$$TestExitEventImplCopyWithImpl(
      _$TestExitEventImpl _value, $Res Function(_$TestExitEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exitCode = null,
    Object? time = null,
  }) {
    return _then(_$TestExitEventImpl(
      exitCode: null == exitCode
          ? _value.exitCode
          : exitCode // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestExitEventImpl implements TestExitEvent {
  const _$TestExitEventImpl(
      {required this.exitCode, required this.time, final String? $type})
      : $type = $type ?? 'exit';

  factory _$TestExitEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestExitEventImplFromJson(json);

  /// The exit code associated with the test process.
  @override
  final int exitCode;

  /// {@macro test_event.time}
  @override
  final int time;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TestEvent.exit(exitCode: $exitCode, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestExitEventImpl &&
            (identical(other.exitCode, exitCode) ||
                other.exitCode == exitCode) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, exitCode, time);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestExitEventImplCopyWith<_$TestExitEventImpl> get copyWith =>
      __$$TestExitEventImplCopyWithImpl<_$TestExitEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)
        start,
    required TResult Function(int count, int time) allSuites,
    required TResult Function(TestSuite suite, int time) suite,
    required TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)
        debug,
    required TResult Function(TestGroup group, int time) group,
    required TResult Function(Test test, int time) startTest,
    required TResult Function(
            int testID, String messageType, String message, int time)
        message,
    required TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)
        error,
    required TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)
        testDone,
    required TResult Function(bool? success, int time) done,
    required TResult Function(int exitCode, int time) exit,
  }) {
    return exit(exitCode, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult? Function(int count, int time)? allSuites,
    TResult? Function(TestSuite suite, int time)? suite,
    TResult? Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult? Function(TestGroup group, int time)? group,
    TResult? Function(Test test, int time)? startTest,
    TResult? Function(int testID, String messageType, String message, int time)?
        message,
    TResult? Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult? Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult? Function(bool? success, int time)? done,
    TResult? Function(int exitCode, int time)? exit,
  }) {
    return exit?.call(exitCode, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String protocolVersion, String? runnerVersion, int pid, int time)?
        start,
    TResult Function(int count, int time)? allSuites,
    TResult Function(TestSuite suite, int time)? suite,
    TResult Function(
            int suiteID, String? observatory, String? remoteDebugger, int time)?
        debug,
    TResult Function(TestGroup group, int time)? group,
    TResult Function(Test test, int time)? startTest,
    TResult Function(int testID, String messageType, String message, int time)?
        message,
    TResult Function(int testID, String error, String stackTrace,
            bool isFailure, int time)?
        error,
    TResult Function(
            int testID, TestResult result, bool hidden, bool skipped, int time)?
        testDone,
    TResult Function(bool? success, int time)? done,
    TResult Function(int exitCode, int time)? exit,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit(exitCode, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestStartRunnerEvent value) start,
    required TResult Function(TestAllSuitesEvent value) allSuites,
    required TResult Function(TestSuiteEvent value) suite,
    required TResult Function(TestDebugEvent value) debug,
    required TResult Function(TestGroupEvent value) group,
    required TResult Function(TestStartEvent value) startTest,
    required TResult Function(TestMessageEvent value) message,
    required TResult Function(TestErrorEvent value) error,
    required TResult Function(TestDoneEvent value) testDone,
    required TResult Function(TestRunnerDoneEvent value) done,
    required TResult Function(TestExitEvent value) exit,
  }) {
    return exit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TestStartRunnerEvent value)? start,
    TResult? Function(TestAllSuitesEvent value)? allSuites,
    TResult? Function(TestSuiteEvent value)? suite,
    TResult? Function(TestDebugEvent value)? debug,
    TResult? Function(TestGroupEvent value)? group,
    TResult? Function(TestStartEvent value)? startTest,
    TResult? Function(TestMessageEvent value)? message,
    TResult? Function(TestErrorEvent value)? error,
    TResult? Function(TestDoneEvent value)? testDone,
    TResult? Function(TestRunnerDoneEvent value)? done,
    TResult? Function(TestExitEvent value)? exit,
  }) {
    return exit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestStartRunnerEvent value)? start,
    TResult Function(TestAllSuitesEvent value)? allSuites,
    TResult Function(TestSuiteEvent value)? suite,
    TResult Function(TestDebugEvent value)? debug,
    TResult Function(TestGroupEvent value)? group,
    TResult Function(TestStartEvent value)? startTest,
    TResult Function(TestMessageEvent value)? message,
    TResult Function(TestErrorEvent value)? error,
    TResult Function(TestDoneEvent value)? testDone,
    TResult Function(TestRunnerDoneEvent value)? done,
    TResult Function(TestExitEvent value)? exit,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TestExitEventImplToJson(
      this,
    );
  }
}

abstract class TestExitEvent implements TestEvent {
  const factory TestExitEvent(
      {required final int exitCode,
      required final int time}) = _$TestExitEventImpl;

  factory TestExitEvent.fromJson(Map<String, dynamic> json) =
      _$TestExitEventImpl.fromJson;

  /// The exit code associated with the test process.
  int get exitCode;

  /// {@macro test_event.time}
  @override
  int get time;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestExitEventImplCopyWith<_$TestExitEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TestSuite _$TestSuiteFromJson(Map<String, dynamic> json) {
  return _TestSuite.fromJson(json);
}

/// @nodoc
mixin _$TestSuite {
  /// An opaque ID for the group.
  int get id => throw _privateConstructorUsedError;

  /// The platform on which the suite is running.
  String get platform => throw _privateConstructorUsedError;

  /// The path to the suite's file, or `null` if that path is unknown.
  String? get path => throw _privateConstructorUsedError;

  /// Serializes this TestSuite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TestSuite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestSuiteCopyWith<TestSuite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestSuiteCopyWith<$Res> {
  factory $TestSuiteCopyWith(TestSuite value, $Res Function(TestSuite) then) =
      _$TestSuiteCopyWithImpl<$Res, TestSuite>;
  @useResult
  $Res call({int id, String platform, String? path});
}

/// @nodoc
class _$TestSuiteCopyWithImpl<$Res, $Val extends TestSuite>
    implements $TestSuiteCopyWith<$Res> {
  _$TestSuiteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestSuite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? platform = null,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestSuiteImplCopyWith<$Res>
    implements $TestSuiteCopyWith<$Res> {
  factory _$$TestSuiteImplCopyWith(
          _$TestSuiteImpl value, $Res Function(_$TestSuiteImpl) then) =
      __$$TestSuiteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String platform, String? path});
}

/// @nodoc
class __$$TestSuiteImplCopyWithImpl<$Res>
    extends _$TestSuiteCopyWithImpl<$Res, _$TestSuiteImpl>
    implements _$$TestSuiteImplCopyWith<$Res> {
  __$$TestSuiteImplCopyWithImpl(
      _$TestSuiteImpl _value, $Res Function(_$TestSuiteImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestSuite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? platform = null,
    Object? path = freezed,
  }) {
    return _then(_$TestSuiteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestSuiteImpl implements _TestSuite {
  const _$TestSuiteImpl(
      {required this.id, required this.platform, required this.path});

  factory _$TestSuiteImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestSuiteImplFromJson(json);

  /// An opaque ID for the group.
  @override
  final int id;

  /// The platform on which the suite is running.
  @override
  final String platform;

  /// The path to the suite's file, or `null` if that path is unknown.
  @override
  final String? path;

  @override
  String toString() {
    return 'TestSuite(id: $id, platform: $platform, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestSuiteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, platform, path);

  /// Create a copy of TestSuite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestSuiteImplCopyWith<_$TestSuiteImpl> get copyWith =>
      __$$TestSuiteImplCopyWithImpl<_$TestSuiteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestSuiteImplToJson(
      this,
    );
  }
}

abstract class _TestSuite implements TestSuite {
  const factory _TestSuite(
      {required final int id,
      required final String platform,
      required final String? path}) = _$TestSuiteImpl;

  factory _TestSuite.fromJson(Map<String, dynamic> json) =
      _$TestSuiteImpl.fromJson;

  /// An opaque ID for the group.
  @override
  int get id;

  /// The platform on which the suite is running.
  @override
  String get platform;

  /// The path to the suite's file, or `null` if that path is unknown.
  @override
  String? get path;

  /// Create a copy of TestSuite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestSuiteImplCopyWith<_$TestSuiteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TestGroup _$TestGroupFromJson(Map<String, dynamic> json) {
  return _TestGroup.fromJson(json);
}

/// @nodoc
mixin _$TestGroup {
  /// An opaque ID for the group.
  int get id => throw _privateConstructorUsedError;

  /// The name of the group, including prefixes from any containing groups.
  String get name => throw _privateConstructorUsedError;

  /// The ID of the suite containing this group.
  int get suiteID => throw _privateConstructorUsedError;

  /// The ID of the group's parent group, unless it's the root group.
  int? get parentID => throw _privateConstructorUsedError;

  /// The number of tests (recursively) within this group.
  int get testCount => throw _privateConstructorUsedError;

  /// The (1-based) line on which the group was defined, or `null`.
  int? get line => throw _privateConstructorUsedError;

  /// The (1-based) column on which the group was defined, or `null`.
  int? get column => throw _privateConstructorUsedError;

  /// The URL for the file in which the group was defined, or `null`.
  String? get url => throw _privateConstructorUsedError;

  /// This field is deprecated and should not be used.
  TestMetadata get metadata => throw _privateConstructorUsedError;

  /// Serializes this TestGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TestGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestGroupCopyWith<TestGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestGroupCopyWith<$Res> {
  factory $TestGroupCopyWith(TestGroup value, $Res Function(TestGroup) then) =
      _$TestGroupCopyWithImpl<$Res, TestGroup>;
  @useResult
  $Res call(
      {int id,
      String name,
      int suiteID,
      int? parentID,
      int testCount,
      int? line,
      int? column,
      String? url,
      TestMetadata metadata});

  $TestMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$TestGroupCopyWithImpl<$Res, $Val extends TestGroup>
    implements $TestGroupCopyWith<$Res> {
  _$TestGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? suiteID = null,
    Object? parentID = freezed,
    Object? testCount = null,
    Object? line = freezed,
    Object? column = freezed,
    Object? url = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      suiteID: null == suiteID
          ? _value.suiteID
          : suiteID // ignore: cast_nullable_to_non_nullable
              as int,
      parentID: freezed == parentID
          ? _value.parentID
          : parentID // ignore: cast_nullable_to_non_nullable
              as int?,
      testCount: null == testCount
          ? _value.testCount
          : testCount // ignore: cast_nullable_to_non_nullable
              as int,
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as int?,
      column: freezed == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as TestMetadata,
    ) as $Val);
  }

  /// Create a copy of TestGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TestMetadataCopyWith<$Res> get metadata {
    return $TestMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TestGroupImplCopyWith<$Res>
    implements $TestGroupCopyWith<$Res> {
  factory _$$TestGroupImplCopyWith(
          _$TestGroupImpl value, $Res Function(_$TestGroupImpl) then) =
      __$$TestGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int suiteID,
      int? parentID,
      int testCount,
      int? line,
      int? column,
      String? url,
      TestMetadata metadata});

  @override
  $TestMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$TestGroupImplCopyWithImpl<$Res>
    extends _$TestGroupCopyWithImpl<$Res, _$TestGroupImpl>
    implements _$$TestGroupImplCopyWith<$Res> {
  __$$TestGroupImplCopyWithImpl(
      _$TestGroupImpl _value, $Res Function(_$TestGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? suiteID = null,
    Object? parentID = freezed,
    Object? testCount = null,
    Object? line = freezed,
    Object? column = freezed,
    Object? url = freezed,
    Object? metadata = null,
  }) {
    return _then(_$TestGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      suiteID: null == suiteID
          ? _value.suiteID
          : suiteID // ignore: cast_nullable_to_non_nullable
              as int,
      parentID: freezed == parentID
          ? _value.parentID
          : parentID // ignore: cast_nullable_to_non_nullable
              as int?,
      testCount: null == testCount
          ? _value.testCount
          : testCount // ignore: cast_nullable_to_non_nullable
              as int,
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as int?,
      column: freezed == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as TestMetadata,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestGroupImpl implements _TestGroup {
  const _$TestGroupImpl(
      {required this.id,
      required this.name,
      required this.suiteID,
      required this.parentID,
      required this.testCount,
      required this.line,
      required this.column,
      required this.url,
      required this.metadata});

  factory _$TestGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestGroupImplFromJson(json);

  /// An opaque ID for the group.
  @override
  final int id;

  /// The name of the group, including prefixes from any containing groups.
  @override
  final String name;

  /// The ID of the suite containing this group.
  @override
  final int suiteID;

  /// The ID of the group's parent group, unless it's the root group.
  @override
  final int? parentID;

  /// The number of tests (recursively) within this group.
  @override
  final int testCount;

  /// The (1-based) line on which the group was defined, or `null`.
  @override
  final int? line;

  /// The (1-based) column on which the group was defined, or `null`.
  @override
  final int? column;

  /// The URL for the file in which the group was defined, or `null`.
  @override
  final String? url;

  /// This field is deprecated and should not be used.
  @override
  final TestMetadata metadata;

  @override
  String toString() {
    return 'TestGroup(id: $id, name: $name, suiteID: $suiteID, parentID: $parentID, testCount: $testCount, line: $line, column: $column, url: $url, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.suiteID, suiteID) || other.suiteID == suiteID) &&
            (identical(other.parentID, parentID) ||
                other.parentID == parentID) &&
            (identical(other.testCount, testCount) ||
                other.testCount == testCount) &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, suiteID, parentID,
      testCount, line, column, url, metadata);

  /// Create a copy of TestGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestGroupImplCopyWith<_$TestGroupImpl> get copyWith =>
      __$$TestGroupImplCopyWithImpl<_$TestGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestGroupImplToJson(
      this,
    );
  }
}

abstract class _TestGroup implements TestGroup {
  const factory _TestGroup(
      {required final int id,
      required final String name,
      required final int suiteID,
      required final int? parentID,
      required final int testCount,
      required final int? line,
      required final int? column,
      required final String? url,
      required final TestMetadata metadata}) = _$TestGroupImpl;

  factory _TestGroup.fromJson(Map<String, dynamic> json) =
      _$TestGroupImpl.fromJson;

  /// An opaque ID for the group.
  @override
  int get id;

  /// The name of the group, including prefixes from any containing groups.
  @override
  String get name;

  /// The ID of the suite containing this group.
  @override
  int get suiteID;

  /// The ID of the group's parent group, unless it's the root group.
  @override
  int? get parentID;

  /// The number of tests (recursively) within this group.
  @override
  int get testCount;

  /// The (1-based) line on which the group was defined, or `null`.
  @override
  int? get line;

  /// The (1-based) column on which the group was defined, or `null`.
  @override
  int? get column;

  /// The URL for the file in which the group was defined, or `null`.
  @override
  String? get url;

  /// This field is deprecated and should not be used.
  @override
  TestMetadata get metadata;

  /// Create a copy of TestGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestGroupImplCopyWith<_$TestGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TestMetadata _$TestMetadataFromJson(Map<String, dynamic> json) {
  return _TestMetadata.fromJson(json);
}

/// @nodoc
mixin _$TestMetadata {
  /// Whether the test was skipped.
  bool get skip => throw _privateConstructorUsedError;

  /// The reason the tests was skipped, or `null` if it wasn't skipped.
  String? get skipReason => throw _privateConstructorUsedError;

  /// Serializes this TestMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TestMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestMetadataCopyWith<TestMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestMetadataCopyWith<$Res> {
  factory $TestMetadataCopyWith(
          TestMetadata value, $Res Function(TestMetadata) then) =
      _$TestMetadataCopyWithImpl<$Res, TestMetadata>;
  @useResult
  $Res call({bool skip, String? skipReason});
}

/// @nodoc
class _$TestMetadataCopyWithImpl<$Res, $Val extends TestMetadata>
    implements $TestMetadataCopyWith<$Res> {
  _$TestMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = null,
    Object? skipReason = freezed,
  }) {
    return _then(_value.copyWith(
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as bool,
      skipReason: freezed == skipReason
          ? _value.skipReason
          : skipReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestMetadataImplCopyWith<$Res>
    implements $TestMetadataCopyWith<$Res> {
  factory _$$TestMetadataImplCopyWith(
          _$TestMetadataImpl value, $Res Function(_$TestMetadataImpl) then) =
      __$$TestMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool skip, String? skipReason});
}

/// @nodoc
class __$$TestMetadataImplCopyWithImpl<$Res>
    extends _$TestMetadataCopyWithImpl<$Res, _$TestMetadataImpl>
    implements _$$TestMetadataImplCopyWith<$Res> {
  __$$TestMetadataImplCopyWithImpl(
      _$TestMetadataImpl _value, $Res Function(_$TestMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = null,
    Object? skipReason = freezed,
  }) {
    return _then(_$TestMetadataImpl(
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as bool,
      skipReason: freezed == skipReason
          ? _value.skipReason
          : skipReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestMetadataImpl implements _TestMetadata {
  const _$TestMetadataImpl({required this.skip, required this.skipReason});

  factory _$TestMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestMetadataImplFromJson(json);

  /// Whether the test was skipped.
  @override
  final bool skip;

  /// The reason the tests was skipped, or `null` if it wasn't skipped.
  @override
  final String? skipReason;

  @override
  String toString() {
    return 'TestMetadata(skip: $skip, skipReason: $skipReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestMetadataImpl &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.skipReason, skipReason) ||
                other.skipReason == skipReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, skip, skipReason);

  /// Create a copy of TestMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestMetadataImplCopyWith<_$TestMetadataImpl> get copyWith =>
      __$$TestMetadataImplCopyWithImpl<_$TestMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestMetadataImplToJson(
      this,
    );
  }
}

abstract class _TestMetadata implements TestMetadata {
  const factory _TestMetadata(
      {required final bool skip,
      required final String? skipReason}) = _$TestMetadataImpl;

  factory _TestMetadata.fromJson(Map<String, dynamic> json) =
      _$TestMetadataImpl.fromJson;

  /// Whether the test was skipped.
  @override
  bool get skip;

  /// The reason the tests was skipped, or `null` if it wasn't skipped.
  @override
  String? get skipReason;

  /// Create a copy of TestMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestMetadataImplCopyWith<_$TestMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Test _$TestFromJson(Map<String, dynamic> json) {
  return _Test.fromJson(json);
}

/// @nodoc
mixin _$Test {
  /// An opaque ID for the test.
  int get id => throw _privateConstructorUsedError;

  /// The name of the test, including prefixes from any containing groups.
  String get name => throw _privateConstructorUsedError;

  /// The ID of the suite containing this test.
  int get suiteID => throw _privateConstructorUsedError;

  /// The IDs of groups containing this test, in order from outermost to
  /// innermost.
  List<int> get groupIDs => throw _privateConstructorUsedError;

  /// The (1-based) line on which the test was defined, or `null`.
  int? get line => throw _privateConstructorUsedError;

  /// The (1-based) column on which the test was defined, or `null`.
  int? get column => throw _privateConstructorUsedError;

  /// The URL for the file in which the test was defined, or `null`.
  String? get url => throw _privateConstructorUsedError;

  /// The (1-based) line in the original test suite from which the test
  /// originated.
  ///
  /// Will only be present if `root_url` is different from `url`.
  int? get rootLine => throw _privateConstructorUsedError;

  /// The (1-based) line on in the original test suite from which the test
  /// originated.
  ///
  /// Will only be present if `root_url` is different from `url`.
  int? get rootColumn => throw _privateConstructorUsedError;

  /// The URL for the original test suite in which the test was defined.
  ///
  /// Will only be present if different from `url`.
  String? get rootUrl => throw _privateConstructorUsedError;

  /// This field is deprecated and should not be used.
  TestMetadata get metadata => throw _privateConstructorUsedError;

  /// Serializes this Test to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Test
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestCopyWith<Test> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestCopyWith<$Res> {
  factory $TestCopyWith(Test value, $Res Function(Test) then) =
      _$TestCopyWithImpl<$Res, Test>;
  @useResult
  $Res call(
      {int id,
      String name,
      int suiteID,
      List<int> groupIDs,
      int? line,
      int? column,
      String? url,
      int? rootLine,
      int? rootColumn,
      String? rootUrl,
      TestMetadata metadata});

  $TestMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$TestCopyWithImpl<$Res, $Val extends Test>
    implements $TestCopyWith<$Res> {
  _$TestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Test
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? suiteID = null,
    Object? groupIDs = null,
    Object? line = freezed,
    Object? column = freezed,
    Object? url = freezed,
    Object? rootLine = freezed,
    Object? rootColumn = freezed,
    Object? rootUrl = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      suiteID: null == suiteID
          ? _value.suiteID
          : suiteID // ignore: cast_nullable_to_non_nullable
              as int,
      groupIDs: null == groupIDs
          ? _value.groupIDs
          : groupIDs // ignore: cast_nullable_to_non_nullable
              as List<int>,
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as int?,
      column: freezed == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      rootLine: freezed == rootLine
          ? _value.rootLine
          : rootLine // ignore: cast_nullable_to_non_nullable
              as int?,
      rootColumn: freezed == rootColumn
          ? _value.rootColumn
          : rootColumn // ignore: cast_nullable_to_non_nullable
              as int?,
      rootUrl: freezed == rootUrl
          ? _value.rootUrl
          : rootUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as TestMetadata,
    ) as $Val);
  }

  /// Create a copy of Test
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TestMetadataCopyWith<$Res> get metadata {
    return $TestMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TestImplCopyWith<$Res> implements $TestCopyWith<$Res> {
  factory _$$TestImplCopyWith(
          _$TestImpl value, $Res Function(_$TestImpl) then) =
      __$$TestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int suiteID,
      List<int> groupIDs,
      int? line,
      int? column,
      String? url,
      int? rootLine,
      int? rootColumn,
      String? rootUrl,
      TestMetadata metadata});

  @override
  $TestMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$TestImplCopyWithImpl<$Res>
    extends _$TestCopyWithImpl<$Res, _$TestImpl>
    implements _$$TestImplCopyWith<$Res> {
  __$$TestImplCopyWithImpl(_$TestImpl _value, $Res Function(_$TestImpl) _then)
      : super(_value, _then);

  /// Create a copy of Test
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? suiteID = null,
    Object? groupIDs = null,
    Object? line = freezed,
    Object? column = freezed,
    Object? url = freezed,
    Object? rootLine = freezed,
    Object? rootColumn = freezed,
    Object? rootUrl = freezed,
    Object? metadata = null,
  }) {
    return _then(_$TestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      suiteID: null == suiteID
          ? _value.suiteID
          : suiteID // ignore: cast_nullable_to_non_nullable
              as int,
      groupIDs: null == groupIDs
          ? _value._groupIDs
          : groupIDs // ignore: cast_nullable_to_non_nullable
              as List<int>,
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as int?,
      column: freezed == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      rootLine: freezed == rootLine
          ? _value.rootLine
          : rootLine // ignore: cast_nullable_to_non_nullable
              as int?,
      rootColumn: freezed == rootColumn
          ? _value.rootColumn
          : rootColumn // ignore: cast_nullable_to_non_nullable
              as int?,
      rootUrl: freezed == rootUrl
          ? _value.rootUrl
          : rootUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as TestMetadata,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestImpl implements _Test {
  const _$TestImpl(
      {required this.id,
      required this.name,
      required this.suiteID,
      required final List<int> groupIDs,
      required this.line,
      required this.column,
      required this.url,
      required this.rootLine,
      required this.rootColumn,
      required this.rootUrl,
      required this.metadata})
      : _groupIDs = groupIDs;

  factory _$TestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestImplFromJson(json);

  /// An opaque ID for the test.
  @override
  final int id;

  /// The name of the test, including prefixes from any containing groups.
  @override
  final String name;

  /// The ID of the suite containing this test.
  @override
  final int suiteID;

  /// The IDs of groups containing this test, in order from outermost to
  /// innermost.
  final List<int> _groupIDs;

  /// The IDs of groups containing this test, in order from outermost to
  /// innermost.
  @override
  List<int> get groupIDs {
    if (_groupIDs is EqualUnmodifiableListView) return _groupIDs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupIDs);
  }

  /// The (1-based) line on which the test was defined, or `null`.
  @override
  final int? line;

  /// The (1-based) column on which the test was defined, or `null`.
  @override
  final int? column;

  /// The URL for the file in which the test was defined, or `null`.
  @override
  final String? url;

  /// The (1-based) line in the original test suite from which the test
  /// originated.
  ///
  /// Will only be present if `root_url` is different from `url`.
  @override
  final int? rootLine;

  /// The (1-based) line on in the original test suite from which the test
  /// originated.
  ///
  /// Will only be present if `root_url` is different from `url`.
  @override
  final int? rootColumn;

  /// The URL for the original test suite in which the test was defined.
  ///
  /// Will only be present if different from `url`.
  @override
  final String? rootUrl;

  /// This field is deprecated and should not be used.
  @override
  final TestMetadata metadata;

  @override
  String toString() {
    return 'Test(id: $id, name: $name, suiteID: $suiteID, groupIDs: $groupIDs, line: $line, column: $column, url: $url, rootLine: $rootLine, rootColumn: $rootColumn, rootUrl: $rootUrl, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.suiteID, suiteID) || other.suiteID == suiteID) &&
            const DeepCollectionEquality().equals(other._groupIDs, _groupIDs) &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.rootLine, rootLine) ||
                other.rootLine == rootLine) &&
            (identical(other.rootColumn, rootColumn) ||
                other.rootColumn == rootColumn) &&
            (identical(other.rootUrl, rootUrl) || other.rootUrl == rootUrl) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      suiteID,
      const DeepCollectionEquality().hash(_groupIDs),
      line,
      column,
      url,
      rootLine,
      rootColumn,
      rootUrl,
      metadata);

  /// Create a copy of Test
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestImplCopyWith<_$TestImpl> get copyWith =>
      __$$TestImplCopyWithImpl<_$TestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestImplToJson(
      this,
    );
  }
}

abstract class _Test implements Test {
  const factory _Test(
      {required final int id,
      required final String name,
      required final int suiteID,
      required final List<int> groupIDs,
      required final int? line,
      required final int? column,
      required final String? url,
      required final int? rootLine,
      required final int? rootColumn,
      required final String? rootUrl,
      required final TestMetadata metadata}) = _$TestImpl;

  factory _Test.fromJson(Map<String, dynamic> json) = _$TestImpl.fromJson;

  /// An opaque ID for the test.
  @override
  int get id;

  /// The name of the test, including prefixes from any containing groups.
  @override
  String get name;

  /// The ID of the suite containing this test.
  @override
  int get suiteID;

  /// The IDs of groups containing this test, in order from outermost to
  /// innermost.
  @override
  List<int> get groupIDs;

  /// The (1-based) line on which the test was defined, or `null`.
  @override
  int? get line;

  /// The (1-based) column on which the test was defined, or `null`.
  @override
  int? get column;

  /// The URL for the file in which the test was defined, or `null`.
  @override
  String? get url;

  /// The (1-based) line in the original test suite from which the test
  /// originated.
  ///
  /// Will only be present if `root_url` is different from `url`.
  @override
  int? get rootLine;

  /// The (1-based) line on in the original test suite from which the test
  /// originated.
  ///
  /// Will only be present if `root_url` is different from `url`.
  @override
  int? get rootColumn;

  /// The URL for the original test suite in which the test was defined.
  ///
  /// Will only be present if different from `url`.
  @override
  String? get rootUrl;

  /// This field is deprecated and should not be used.
  @override
  TestMetadata get metadata;

  /// Create a copy of Test
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestImplCopyWith<_$TestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
