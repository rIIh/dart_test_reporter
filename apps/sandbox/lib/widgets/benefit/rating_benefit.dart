import 'package:flutter/material.dart';
import 'package:test_reporter_sandbox/widgets/benefit/benefit_container.dart';
import 'package:test_reporter_sandbox/widgets/benefit/benefit_icon.dart';

class RatingBenefit extends StatelessWidget {
  const RatingBenefit({super.key});

  @override
  Widget build(BuildContext context) {
    return BenefitContainer(
      icon: const BenefitIcon(icon: Icon(Icons.alternate_email_rounded)),
      title: '+1 балл к рейтингу',
      subtitle: 'Будут все шансы стать фаворитом недели',
      color: Theme.of(context).colorScheme.surface,
    );
  }
}
