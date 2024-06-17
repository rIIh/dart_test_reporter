import 'dart:math';

import 'package:allure_report/allure_report.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('int.parse successfully parses "1"', () {
    expect(int.parse('1'), equals(1));
  });

  test('Known: int.parse successfully parses "2"', () {
    Allure.tag('Allure Core');
    Allure.known();
    expect(int.parse('5'), equals(2));
  });

  test('Flaky: int.parse successfully parses "1"', () {
    Allure.tag('Allure Core');
    Allure.flaky();
    expect(int.parse(Random().nextBool() ? '1' : '2'), equals(1));
  });

  test('Flaky and muted: int.parse successfully parses "1"', () {
    Allure.tag('Allure Core');
    Allure.flaky();
    Allure.muted();
    expect(int.parse(Random().nextBool() ? '1' : '2'), equals(1));
  });

  test('Muted: int.parse successfully parses "1"', () {
    Allure.tag('Allure Core');
    Allure.muted();
    expect(int.parse('1'), equals(1));
  });

  test('Muted: int.parse fails', () {
    Allure.tag('Allure Core');
    Allure.muted();
    expect(int.parse('1'), equals(2));
  });
}
