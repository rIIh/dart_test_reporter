# Dart Allure Report Adapter

Allure Report packages defines `AllureReporter` class used by `test_reporter` CLI tool.

## Usage

You should add `allure_report` to your dev dependencies to `test_reporter` could import it in runtime

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