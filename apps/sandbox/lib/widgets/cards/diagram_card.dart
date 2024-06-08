import 'package:flutter/material.dart';
import 'package:test_reporter_sandbox/widgets/cards/exam_card.dart';

class DiagramCard extends StatelessWidget {
  static const kStrokeWidth = 5.0;

  /// Defaults to [ExamCard._backgroundColor]
  final Color? backgroundColor;
  final DecorationImage? backgroundImage;

  /// Value from `0.0` to `1.0`.
  final double value;
  final Color color;
  final String label;

  const DiagramCard({
    super.key,
    this.backgroundImage,
    this.backgroundColor,
    required this.value,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ExamCard(
      backgroundColor: backgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox.square(
            dimension: 50,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: 1,
                  strokeWidth: kStrokeWidth,
                  strokeAlign: CircularProgressIndicator.strokeAlignInside,
                  color: Colors.grey.shade200,
                ),
                CircularProgressIndicator(
                  value: value,
                  color: color,
                  strokeAlign: CircularProgressIndicator.strokeAlignInside,
                  strokeWidth: kStrokeWidth,
                  strokeCap: StrokeCap.round,
                ),
                Center(
                  child: Text(
                    '${(value.clamp(0, 1) * 100).round()}%',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: color),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
    );
  }
}
