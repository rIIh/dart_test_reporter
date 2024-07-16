class DiffEvent {
  static const kTag = 'allure:event:diff';

  static bool isEligible(String message) {
    return message.startsWith('$kTag:') &&
        ':'.allMatches(message.replaceAll('$kTag:', '')).length == 2;
  }

  DiffEvent(this.expected, this.actual, this.diff);

  factory DiffEvent.fromMessage(String message) {
    final [expected, actual, diff] = message //
        .replaceAll('$kTag:', '')
        .split(':');

    return DiffEvent(expected, actual, diff);
  }

  final String expected;
  final String actual;
  final String diff;
}
