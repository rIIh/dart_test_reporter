import 'package:allure_report/src/models/severity.dart';

export 'models/models.dart';

abstract final class Allure {
  // #region status details

  static void known() => print('allure:event:known');

  static void flaky() => print('allure:event:flaky');

  static void muted() => print('allure:event:muted');

  // #endregion

  // #region Epic -> Feature -> Story

  static void epic(String name) => print('allure:event:epic:$name');

  static void feature(String name) => print('allure:event:feature:$name');

  static void story(String name) => print('allure:event:story:$name');

  // #endregion

  static void severity(Severity severity) =>
      print('allure:event:severity:${severity.name}');

  static void tag(String tag) => print('allure:event:tag:$tag');

  static void description(String description) =>
      print('allure:event:description:$description');

  static void link(String url, String name, String type) =>
      print('allure:event:link:$type:$name:$url');

  static void issue(String name, String url) => link(url, name, 'issue');

  static void tms(String name, String url) => link(url, name, 'tms');

  // TODO(@melvspace): 06/17/24 implement parameter
  static void parameter(
    String name,
    String value, {
    String mode = 'default',
    bool excluded = false,
  }) =>
      print('allure:event:parameter:$name:$value:$mode:$excluded');
}
