import 'package:flutter/material.dart';
import 'package:test_reporter_sandbox/widgets/cards/exam_card.dart';
import 'package:test_reporter_sandbox/widgets/cards/received_icon.dart';

class RatingReceivedCard extends StatelessWidget {
  final Color? backgroundColor;

  const RatingReceivedCard({
    super.key,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ExamCard(
      backgroundColor:
          backgroundColor ?? Theme.of(context).colorScheme.surfaceContainer,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ReceivedIcon(icon: Icon(Icons.radar)),
          SizedBox(height: 8),
          Text('+1 балл к рейтингу'),
        ],
      ),
    );
  }
}
