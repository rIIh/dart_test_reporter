# Test Reporting utilities

This repository contains various tools and utilities for generating and deploy reports for Dart applications

## Concept

Dart test core packages does not provide a way to inject custom reporting logic when you call `dart test`.

To workaround this problem there is `test_reporter` cli tool which wraps `dart test` process and processes events from it.

For now `test_reporter` is hard coded to generate Allure reports, but in future this logic should be swappable and not be bound to this repository.

## Test Reporter

### Wrapping test command

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

### Reports

Allure results are placed in `allure-results` folder in project root folder.


> [!WARNING]
> Full Allure format is not supported. Not all features are available at the moment.
> 
> Full spec support is needs further development

## Allure Server CLI

`allures` is meant to be used to upload reports to OSS [Allure Server](https://github.com/kochetkov-ma/allure-server)

See [Allure Server repository](https://github.com/kochetkov-ma/allure-server) to find instructions to build it up and running.

### Install

```bash
dart pub global activate allure_server_cli
```

Command will be available with name `allures`

```bash
allures --help
```

### Usage

To upload results to Allure server you should zip results to ZIP Archive

```
zip -r allure-results.zip allure-results/
```

Then you can upload report to Allure server with nex command

```bash
allures --host http://localhost:8080 report --upload allure-results.zip --path develop
```

See help for additional usage info

```bash
allures --help
```

## Disclaimer



> [!WARNING]
> It is hobby-time project created for research of possibility to integrate Dart tests with Allure Reporting Framework. 
> 
> I am not currently supposed to support it as full-feature set by only myself. It depends on demand and user activity.
> 
> Feel free to contribute :-)
