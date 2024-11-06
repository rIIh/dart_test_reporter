# Test Reporter - Usage example

## Example with Allure Report Adapter

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

3. Run test_reporter command with your tests

```bash
dart run test_reporter -- dart test
```

```bash
dart run test_reporter -- flutter test
```

### Output

Allure results are placed in `allure-results` folder in project root folder.

Proceed to [Allure / How to view a report](https://allurereport.org/docs/gettingstarted-view-report/#start-a-local-web-server)
