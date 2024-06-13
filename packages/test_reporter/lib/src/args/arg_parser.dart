import 'package:args/args.dart';

ArgParser buildArgParser() {
  return ArgParser(allowTrailingOptions: false) //
    ..addOption('reporter');
}
