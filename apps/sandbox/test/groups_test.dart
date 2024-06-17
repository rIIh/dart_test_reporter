import 'package:flutter_test/flutter_test.dart';

void main() {
  group('single level group', () {
    test('always passed', () => expect(true, isTrue));
  });

  group('two level group', () {
    group('sublevel of two level group', () {
      test('always passed', () => expect(true, isTrue));
    });
  });

  group('three level group', () {
    group('sublevel of two level group', () {
      group('another sublevel', () {
        test('always passed', () => expect(true, isTrue));
      });
    });
  });

  group('composite group of groups and tests', () {
    test('always passed', () => expect(true, isTrue));

    group('sublevel of two level group', () {
      test('always passed', () => expect(true, isTrue));

      group('another sublevel', () {
        test('always passed', () => expect(true, isTrue));
      });
    });
  });
}
