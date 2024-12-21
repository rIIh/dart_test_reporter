import 'package:flutter/material.dart';
import 'package:test_reporter_sandbox/widgets/benefit/benefit_container.dart';
import 'package:test_reporter_sandbox/widgets/benefit/benefit_icon.dart';

class RatingBenefit extends StatelessWidget {
  const RatingBenefit({super.key});

  @override
  Widget build(BuildContext context) {
    return BenefitContainer(
      icon: const BenefitIcon(icon: Icon(Icons.alternate_email_rounded)),
      title: '+1 score to rating',
      subtitle: 'Will have every chance to be the favorite of the week',
      color: Theme.of(context).colorScheme.surface,
    );
  }
}
