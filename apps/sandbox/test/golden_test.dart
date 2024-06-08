import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_reporter_sandbox/components.book.dart';

void main() {
  test("Hello world", () async {
    expect(0, equals(0));
  });

  for (final component in components) {
    for (final story in component.stories) {
      goldenTest(
        'Component: ${component.name}, Story: ${story.name}',
        fileName: '${component.name}.${story.name}',
        builder: () => GoldenTestGroup(
          children: [
            ...[
              Theme(
                data: ThemeData.light(),
                child: Builder(builder: story.build),
              ),
              Theme(
                data: ThemeData.dark(),
                child: Builder(builder: story.build),
              ),
            ],
          ],
        ),
      );
    }
  }
}
