# Test Reporter

CLI Tool to wrap `dart` and `flutter` tests to generate reports

## Wrapping test command

Prepend your test command with `with_reporter`

```bash
with_reporter dart test
```

You can use it with Flutter tests

```bash
with_reporter flutter test
```

You can pass arguments to dart/flutter tests as is

```bash
with_reporter flutter test --tags golden --coverage
```

See repository [README](https://github.com/rIIh/dart_test_reporter) for detailed info
