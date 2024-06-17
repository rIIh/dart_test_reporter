// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestReport {
  TestStartEvent? get start => throw _privateConstructorUsedError;
  TestDoneEvent? get end => throw _privateConstructorUsedError;
  TestErrorEvent? get error => throw _privateConstructorUsedError;
  List<String> get attachments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestReportCopyWith<TestReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestReportCopyWith<$Res> {
  factory $TestReportCopyWith(
          TestReport value, $Res Function(TestReport) then) =
      _$TestReportCopyWithImpl<$Res, TestReport>;
  @useResult
  $Res call(
      {TestStartEvent? start,
      TestDoneEvent? end,
      TestErrorEvent? error,
      List<String> attachments});
}

/// @nodoc
class _$TestReportCopyWithImpl<$Res, $Val extends TestReport>
    implements $TestReportCopyWith<$Res> {
  _$TestReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? error = freezed,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as TestStartEvent?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as TestDoneEvent?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TestErrorEvent?,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestReportImplCopyWith<$Res>
    implements $TestReportCopyWith<$Res> {
  factory _$$TestReportImplCopyWith(
          _$TestReportImpl value, $Res Function(_$TestReportImpl) then) =
      __$$TestReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TestStartEvent? start,
      TestDoneEvent? end,
      TestErrorEvent? error,
      List<String> attachments});
}

/// @nodoc
class __$$TestReportImplCopyWithImpl<$Res>
    extends _$TestReportCopyWithImpl<$Res, _$TestReportImpl>
    implements _$$TestReportImplCopyWith<$Res> {
  __$$TestReportImplCopyWithImpl(
      _$TestReportImpl _value, $Res Function(_$TestReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? error = freezed,
    Object? attachments = null,
  }) {
    return _then(_$TestReportImpl(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as TestStartEvent?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as TestDoneEvent?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TestErrorEvent?,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$TestReportImpl extends _TestReport {
  const _$TestReportImpl(
      {this.start,
      this.end,
      this.error,
      final List<String> attachments = const []})
      : _attachments = attachments,
        super._();

  @override
  final TestStartEvent? start;
  @override
  final TestDoneEvent? end;
  @override
  final TestErrorEvent? error;
  final List<String> _attachments;
  @override
  @JsonKey()
  List<String> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  String toString() {
    return 'TestReport(start: $start, end: $end, error: $error, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestReportImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end, error,
      const DeepCollectionEquality().hash(_attachments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestReportImplCopyWith<_$TestReportImpl> get copyWith =>
      __$$TestReportImplCopyWithImpl<_$TestReportImpl>(this, _$identity);
}

abstract class _TestReport extends TestReport {
  const factory _TestReport(
      {final TestStartEvent? start,
      final TestDoneEvent? end,
      final TestErrorEvent? error,
      final List<String> attachments}) = _$TestReportImpl;
  const _TestReport._() : super._();

  @override
  TestStartEvent? get start;
  @override
  TestDoneEvent? get end;
  @override
  TestErrorEvent? get error;
  @override
  List<String> get attachments;
  @override
  @JsonKey(ignore: true)
  _$$TestReportImplCopyWith<_$TestReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
