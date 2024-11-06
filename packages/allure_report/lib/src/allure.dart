import 'package:allure_report/src/models/severity.dart';

export 'models/models.dart';

// TODO(@melvspace): 11/06/24 add links to Allure documentation reference for each metadata field.

/// Static class to add metadata to test cases
abstract final class Allure {
  // #region status details

  /// Mark test failure as known
  static void known() => print('allure:event:known');

  /// Mark test case as flaky
  static void flaky() => print('allure:event:flaky');

  /// Mark test case muted
  static void muted() => print('allure:event:muted');

  // #endregion

  // #region Epic -> Feature -> Story

  /// Set epic for test case
  static void epic(String name) => print('allure:event:epic:$name');

  /// Set feature for test case
  static void feature(String name) => print('allure:event:feature:$name');

  /// Set story for test case
  static void story(String name) => print('allure:event:story:$name');

  // #endregion

  /// Add diff screenshot to test case
  static void diff(String expected, String actual, String diff) =>
      print('allure:event:diff:$expected:$actual:$diff');

  /// Set severity of test case
  static void severity(Severity severity) =>
      print('allure:event:severity:${severity.name}');

  /// Add tag to test case
  static void tag(String tag) => print('allure:event:tag:$tag');

  /// Add description to test case
  static void description(String description) =>
      print('allure:event:description:$description');

  /// Add link to test case
  static void link(String url, String name, String type) =>
      print('allure:event:link:$type:$name:$url');

  /// Add issue link to test case
  static void issue(String name, String url) => link(url, name, 'issue');

  /// Add TMS link to test case
  static void tms(String name, String url) => link(url, name, 'tms');

  // TODO(@melvspace): 06/17/24 implement parameter
  /// Add custom parameter to test case
  static void parameter(
    String name,
    String value, {
    String mode = 'default',
    bool excluded = false,
  }) =>
      print('allure:event:parameter:$name:$value:$mode:$excluded');
}
