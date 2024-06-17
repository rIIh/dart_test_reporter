import 'package:allure_report/allure_report.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('description test', () {
    Allure.tag('Allure Core');
    Allure.description(
      '''
# Test with description

Description can have multilines
''',
    );

    expect(true, isTrue);
  });

  test('severity test', () {
    Allure.tag('Allure Core');
    Allure.description('This test has Severity: ${Severity.trivial}');
    Allure.severity(Severity.trivial);

    expect(true, isTrue);
  });

  test('links test', () {
    Allure.tag('Allure Core');
    Allure.description('This test has multiple links');

    /// links
    Allure.issue("Issue Name", "352");
    Allure.tms("Task Name", "352");
    Allure.link("352", "Link name", "custom");

    expect(true, isTrue);
  });
}
