# Test Reporter

CLI Tool to wrap `dart` and `flutter` tests to generate reports

## Wrapping test command

Prepend your test command with `dart run test_reporter -- `. It will wrap `dart test` process with `test_reporter` logic.

```bash
dart run test_reporter -- dart test
```

You can use it with Flutter tests

```bash
dart run test_reporter -- flutter test
```

You can pass arguments to dart/flutter tests as is

```bash
dart run test_reporter -- flutter test --tags golden --coverage
```

See repository [README](https://github.com/rIIh/dart_test_reporter) for detailed info


## Usage with Allure Report Adapter

1. Add `allure_report` and `test_reporter` to your dependencies.

```yaml
dev_dependencies:
  # reporter
  allure_report: ^1.0.0
  test_reporter: ^1.0.0
```


2. Create `reporter.dart` in `test` directory. If no file created, **Basic Console Reporter** will be used.

```dart
import 'package:allure_report/allure_report.dart';
import 'package:test_reporter/test_reporter.dart';

TestReporter create() {
  return AllureReporter();
}
```

2. Run test_reporter command with your tests

```bash
dart run test_reporter -- dart test
```

```bash
dart run test_reporter -- flutter test
```

### Output

Allure results are placed in `allure-results` folder in project root folder.

Proceed to [Allure / How to view a report](https://allurereport.org/docs/gettingstarted-view-report/#start-a-local-web-server)

> [!WARNING]
> Full Allure format is not supported. Not all features are available at the moment.
> 
> Full spec support is needs further development

