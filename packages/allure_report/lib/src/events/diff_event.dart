/// Diff event to attach diff screenshots to test cases.
class DiffEvent {
  /// Prefix to distinguish diff messages from other.
  static const kTag = 'allure:event:diff';

  /// Check message is probably a [DiffEvent]
  static bool isEligible(String message) {
    return message.startsWith('$kTag:') &&
        ':'.allMatches(message.replaceAll('$kTag:', '')).length == 2;
  }

  /// Create [DiffEvent].
  DiffEvent(this.expected, this.actual, this.diff);

  /// Create [DiffEvent] from raw string message
  factory DiffEvent.fromMessage(String message) {
    final [expected, actual, diff] = message //
        .replaceAll('$kTag:', '')
        .split(':');

    return DiffEvent(expected, actual, diff);
  }

  /// Path to "expected" screenshot
  final String expected;

  /// Path to "actual" screenshot
  final String actual;

  /// Path to "difference" screenshot
  final String diff;
}
