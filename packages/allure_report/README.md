# Dart Allure Report Adapter

Allure Report packages defines `AllureReporter` class used by `test_reporter` CLI tool.

## Usage

You should add `allure_report` to your dev dependencies to `test_reporter` could import it in runtime

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

## Attachments

Allure Reporter expects that tests will print messages in format `event:attachment:<path to attachment>`

Example: 

```dart
final base = p.join(Directory.current.path, 'reports', 'failures',
    subfolder, p.basename(masterFile.path));
final test = p.join(Directory.current.path, 'reports', 'failures',
    subfolder, p.basename(testFile.path));

masterFile.copySync(base);
testFile.copySync(test);

print('event:attachment:$base');
print('event:attachment:$test');
```

## TODO

- [x] Handle Flutter errors
- [ ] Add steps support