// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestStartRunnerEventImpl _$$TestStartRunnerEventImplFromJson(
        Map<String, dynamic> json) =>
    _$TestStartRunnerEventImpl(
      protocolVersion: json['protocolVersion'] as String,
      runnerVersion: json['runnerVersion'] as String?,
      pid: (json['pid'] as num).toInt(),
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TestStartRunnerEventImplToJson(
        _$TestStartRunnerEventImpl instance) =>
    <String, dynamic>{
      'protocolVersion': instance.protocolVersion,
      'runnerVersion': instance.runnerVersion,
      'pid': instance.pid,
      'time': instance.time,
      'type': instance.$type,
    };

_$TestAllSuitesEventImpl _$$TestAllSuitesEventImplFromJson(
        Map<String, dynamic> json) =>
    _$TestAllSuitesEventImpl(
      count: (json['count'] as num).toInt(),
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TestAllSuitesEventImplToJson(
        _$TestAllSuitesEventImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'time': instance.time,
      'type': instance.$type,
    };

_$TestSuiteEventImpl _$$TestSuiteEventImplFromJson(Map<String, dynamic> json) =>
    _$TestSuiteEventImpl(
      suite: TestSuite.fromJson(json['suite'] as Map<String, dynamic>),
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TestSuiteEventImplToJson(
        _$TestSuiteEventImpl instance) =>
    <String, dynamic>{
      'suite': instance.suite,
      'time': instance.time,
      'type': instance.$type,
    };

_$TestDebugEventImpl _$$TestDebugEventImplFromJson(Map<String, dynamic> json) =>
    _$TestDebugEventImpl(
      suiteID: (json['suiteID'] as num).toInt(),
      observatory: json['observatory'] as String?,
      remoteDebugger: json['remoteDebugger'] as String?,
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TestDebugEventImplToJson(
        _$TestDebugEventImpl instance) =>
    <String, dynamic>{
      'suiteID': instance.suiteID,
      'observatory': instance.observatory,
      'remoteDebugger': instance.remoteDebugger,
      'time': instance.time,
      'type': instance.$type,
    };

_$TestGroupEventImpl _$$TestGroupEventImplFromJson(Map<String, dynamic> json) =>
    _$TestGroupEventImpl(
      group: TestGroup.fromJson(json['group'] as Map<String, dynamic>),
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TestGroupEventImplToJson(
        _$TestGroupEventImpl instance) =>
    <String, dynamic>{
      'group': instance.group,
      'time': instance.time,
      'type': instance.$type,
    };

_$TestStartEventImpl _$$TestStartEventImplFromJson(Map<String, dynamic> json) =>
    _$TestStartEventImpl(
      test: Test.fromJson(json['test'] as Map<String, dynamic>),
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TestStartEventImplToJson(
        _$TestStartEventImpl instance) =>
    <String, dynamic>{
      'test': instance.test,
      'time': instance.time,
      'type': instance.$type,
    };

_$TestMessageEventImpl _$$TestMessageEventImplFromJson(
        Map<String, dynamic> json) =>
    _$TestMessageEventImpl(
      testID: (json['testID'] as num).toInt(),
      messageType: json['messageType'] as String,
      message: json['message'] as String,
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TestMessageEventImplToJson(
        _$TestMessageEventImpl instance) =>
    <String, dynamic>{
      'testID': instance.testID,
      'messageType': instance.messageType,
      'message': instance.message,
      'time': instance.time,
      'type': instance.$type,
    };

_$TestErrorEventImpl _$$TestErrorEventImplFromJson(Map<String, dynamic> json) =>
    _$TestErrorEventImpl(
      testID: (json['testID'] as num).toInt(),
      error: json['error'] as String,
      stackTrace: json['stackTrace'] as String,
      isFailure: json['isFailure'] as bool,
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TestErrorEventImplToJson(
        _$TestErrorEventImpl instance) =>
    <String, dynamic>{
      'testID': instance.testID,
      'error': instance.error,
      'stackTrace': instance.stackTrace,
      'isFailure': instance.isFailure,
      'time': instance.time,
      'type': instance.$type,
    };

_$TestDoneEventImpl _$$TestDoneEventImplFromJson(Map<String, dynamic> json) =>
    _$TestDoneEventImpl(
      testID: (json['testID'] as num).toInt(),
      result: $enumDecode(_$TestResultEnumMap, json['result']),
      hidden: json['hidden'] as bool,
      skipped: json['skipped'] as bool,
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TestDoneEventImplToJson(_$TestDoneEventImpl instance) =>
    <String, dynamic>{
      'testID': instance.testID,
      'result': _$TestResultEnumMap[instance.result]!,
      'hidden': instance.hidden,
      'skipped': instance.skipped,
      'time': instance.time,
      'type': instance.$type,
    };

const _$TestResultEnumMap = {
  TestResult.success: 'success',
  TestResult.failure: 'failure',
  TestResult.error: 'error',
};

_$TestRunnerDoneEventImpl _$$TestRunnerDoneEventImplFromJson(
        Map<String, dynamic> json) =>
    _$TestRunnerDoneEventImpl(
      success: json['success'] as bool?,
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TestRunnerDoneEventImplToJson(
        _$TestRunnerDoneEventImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'time': instance.time,
      'type': instance.$type,
    };

_$TestExitEventImpl _$$TestExitEventImplFromJson(Map<String, dynamic> json) =>
    _$TestExitEventImpl(
      exitCode: (json['exitCode'] as num).toInt(),
      time: (json['time'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TestExitEventImplToJson(_$TestExitEventImpl instance) =>
    <String, dynamic>{
      'exitCode': instance.exitCode,
      'time': instance.time,
      'type': instance.$type,
    };

_$TestSuiteImpl _$$TestSuiteImplFromJson(Map<String, dynamic> json) =>
    _$TestSuiteImpl(
      id: (json['id'] as num).toInt(),
      platform: json['platform'] as String,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$TestSuiteImplToJson(_$TestSuiteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'platform': instance.platform,
      'path': instance.path,
    };

_$TestGroupImpl _$$TestGroupImplFromJson(Map<String, dynamic> json) =>
    _$TestGroupImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      suiteID: (json['suiteID'] as num).toInt(),
      parentID: (json['parentID'] as num?)?.toInt(),
      testCount: (json['testCount'] as num).toInt(),
      line: (json['line'] as num?)?.toInt(),
      column: (json['column'] as num?)?.toInt(),
      url: json['url'] as String?,
      metadata: TestMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TestGroupImplToJson(_$TestGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'suiteID': instance.suiteID,
      'parentID': instance.parentID,
      'testCount': instance.testCount,
      'line': instance.line,
      'column': instance.column,
      'url': instance.url,
      'metadata': instance.metadata,
    };

_$TestMetadataImpl _$$TestMetadataImplFromJson(Map<String, dynamic> json) =>
    _$TestMetadataImpl(
      skip: json['skip'] as bool,
      skipReason: json['skipReason'] as String?,
    );

Map<String, dynamic> _$$TestMetadataImplToJson(_$TestMetadataImpl instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'skipReason': instance.skipReason,
    };

_$TestImpl _$$TestImplFromJson(Map<String, dynamic> json) => _$TestImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      suiteID: (json['suiteID'] as num).toInt(),
      groupIDs: (json['groupIDs'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      line: (json['line'] as num?)?.toInt(),
      column: (json['column'] as num?)?.toInt(),
      url: json['url'] as String?,
      rootLine: (json['rootLine'] as num?)?.toInt(),
      rootColumn: (json['rootColumn'] as num?)?.toInt(),
      rootUrl: json['rootUrl'] as String?,
      metadata: TestMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TestImplToJson(_$TestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'suiteID': instance.suiteID,
      'groupIDs': instance.groupIDs,
      'line': instance.line,
      'column': instance.column,
      'url': instance.url,
      'rootLine': instance.rootLine,
      'rootColumn': instance.rootColumn,
      'rootUrl': instance.rootUrl,
      'metadata': instance.metadata,
    };
