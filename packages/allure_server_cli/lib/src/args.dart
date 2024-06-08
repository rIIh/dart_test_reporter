import 'package:args/args.dart';

ArgParser buildReportParser() {
  return ArgParser() //
    ..addMultiOption(
      'path',
      help: 'This key means something like project or job or branch. '
          'The latest report with the same path will be active',
      valueHelp: "comma-separated paths",
    )
    ..addFlag(
      'delete-results',
      abbr: 'd',
      defaultsTo: true,
      help: 'Delete results',
    )
    ..addOption(
      'executor.name',
      help: 'Executor name',
    )
    ..addOption(
      'executor.type',
      help: 'Executor type',
    )
    ..addOption(
      'executor.url',
      help: 'Executor url',
    )
    ..addOption(
      'executor.buildOrder',
      help: 'Executor build order',
    )
    ..addOption(
      'executor.buildName',
      help: 'Executor build name',
    )
    ..addOption(
      'executor.buildUrl',
      help: 'Executor build url',
    )
    ..addOption(
      'executor.reportName',
      help: 'Executor report name',
    )
    ..addOption(
      'executor.reportUrl',
      help: 'Executor report url',
    )
    ..addMultiOption(
      'upload',
      help: 'paths of Allure Reports as zip archives',
      valueHelp: "comma-separated paths",
    )
    ..addMultiOption(
      'results',
      help: 'UUIDs of results',
      valueHelp: "comma-separated result UUIDs",
    );
}

ArgParser buildUploadParser() {
  return ArgParser();
}

ArgParser buildParser() {
  return ArgParser()
    ..addOption('host', help: 'Allure Server host', mandatory: true)
    ..addOption('api', help: 'Allure Server API path', defaultsTo: '/api')
    ..addFlag(
      'verbose',
      abbr: 'v',
      help: 'Verbose output',
      defaultsTo: false,
    )
    ..addFlag(
      'help',
      abbr: 'h',
      negatable: false,
      help: 'Print this usage information.',
    )
    ..addFlag(
      'version',
      negatable: false,
      help: 'Print the tool version.',
    )
    ..addCommand(
      'report',
      buildReportParser(),
    )
    ..addCommand(
      'upload',
      buildUploadParser(),
    );
}
