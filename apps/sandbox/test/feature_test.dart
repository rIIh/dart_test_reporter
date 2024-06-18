import 'package:allure_report/allure_report.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Feature A - Story A', () {
    Allure.epic('Core');
    Allure.feature('Some Feature A');
    Allure.story('Some Story A');

    expect(true, isTrue);
  });

  test('Feature B - Story A', () {
    Allure.epic('Core');
    Allure.feature('Some Feature B');
    Allure.story('Some Story A');

    expect(true, isTrue);
  });

  test('Feature A - Story B', () {
    Allure.epic('Core');
    Allure.feature('Some Feature A');
    Allure.story('Some Story B');

    expect(true, isTrue);
  });

  test('Feature B - Story B', () {
    Allure.epic('Core');
    Allure.feature('Some Feature B');
    Allure.story('Some Story B');

    expect(true, isTrue);
  });
}
