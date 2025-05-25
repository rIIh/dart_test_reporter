import 'package:plain_dart_package/plain_dart_package.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = Awesome();

    test('Success Test', () {
      expect(awesome.isAwesome, isTrue);
    });

    test('Failing Test', () {
      expect(awesome.isAwesome, isFalse);
    });

    test('Skipped Test', () {
      expect(awesome.isAwesome, isFalse);
    }, skip: 'this test is skipped by purpose');
  });
}
