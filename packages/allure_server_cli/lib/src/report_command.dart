import 'package:allure_server_cli/src/logger.dart';
import 'package:allure_server_cli/src/upload_command.dart';
import 'package:args/args.dart';
import 'package:dio/dio.dart';

class Params {
  final List<String> path;
  final Executor? executor;
  final List<String> upload;
  final List<String> results;
  final bool deleteResults;

  Params({
    required this.path,
    required this.executor,
    required this.results,
    this.upload = const [],
    this.deleteResults = true,
  });
}

class Executor {
  final String? name;
  final String? type;
  final String? url;
  final String? buildOrder;
  final String? buildName;
  final String? buildUrl;
  final String? reportName;
  final String? reportUrl;

  Executor({
    required this.name,
    required this.type,
    required this.url,
    required this.buildOrder,
    required this.buildName,
    required this.buildUrl,
    required this.reportName,
    required this.reportUrl,
  });

  static Executor? fromArgs(ArgResults args) {
    if ({
      'executor.name',
      'executor.type',
      'executor.url',
      'executor.buildOrder',
      'executor.buildName',
      'executor.buildUrl',
      'executor.reportName',
      'executor.reportUrl',
    }.any(args.wasParsed)) {
      return Executor(
        name: args.option('executor.name'),
        type: args.option('executor.type'),
        url: args.option('executor.url'),
        buildOrder: args.option('executor.buildOrder'),
        buildName: args.option('executor.buildName'),
        buildUrl: args.option('executor.buildUrl'),
        reportName: args.option('executor.reportName'),
        reportUrl: args.option('executor.reportUrl'),
      );
    }

    return null;
  }
}

class ReportResult {
  final String uuid;
  final String path;
  final String url;
  final String latest;

  ReportResult({
    required this.uuid,
    required this.path,
    required this.url,
    required this.latest,
  });

  factory ReportResult.fromJson(Map<String, dynamic> json) => ReportResult(
        uuid: json["uuid"],
        path: json["path"],
        url: json["url"],
        latest: json["latest"],
      );
}

class ReportCommand {
  final Params params;

  ReportCommand({required this.params});

  Future<ReportResult?> execute(Dio client) async {
    final executor = params.executor;
    final results = [...params.results];
    final upload = params.upload;

    for (final file in upload) {
      try {
        final result = await UploadCommand(file: file).execute(client);
        if (result == null) continue;

        results.add(result.uuid);
      } catch (e, s) {
        l.e("Failed to upload file: $file", error: e, stackTrace: s);
      }
    }

    try {
      final response = await client.post(
        '/report',
        data: {
          "reportSpec": {
            "path": params.path,
            "executorInfo": {
              "name": executor?.name,
              "type": executor?.type,
              "url": executor?.url,
              "buildOrder": executor?.buildOrder,
              "buildName": executor?.buildName ?? 'build',
              "buildUrl": executor?.buildUrl,
              "reportName": executor?.reportName,
              "reportUrl": executor?.reportUrl
            }..removeWhere((key, value) => value == null),
          },
          "results": results,
          "deleteResults": params.deleteResults
        },
      );

      final result = ReportResult.fromJson(response.data);
      print("Report available at: ${result.url}");
      return result;
    } on DioException catch (e, s) {
      if (e.response case Response response) {
        l.e(
          'Failed to report: ${e.requestOptions.uri.toString()}\n${response.data}',
          stackTrace: s,
        );
      } else {
        rethrow;
      }
    } catch (e, s) {
      l.e('Failed to report', error: e, stackTrace: s);
    }

    return null;
  }
}
