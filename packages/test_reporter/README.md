# Test Reporter

CLI Tool to wrap `dart` and `flutter` tests to generate reports

## Wrapping test command

Prepend your test command with `dart run test_reporter`. It will wrap `dart test` process with `test_reporter` logic.

```bash
dart run test_reporter dart test
```

You can use it with Flutter tests

```bash
dart run test_reporter flutter test
```

You can pass arguments to dart/flutter tests as is

```bash
dart run test_reporter flutter test --tags golden --coverage
```

See repository [README](https://github.com/rIIh/dart_test_reporter) for detailed info
