import 'package:flutter/material.dart';
import 'package:test_reporter_sandbox/widgets/benefit/benefit_container.dart';
import 'package:test_reporter_sandbox/widgets/benefit/benefit_icon.dart';

class FrostBenefit extends StatelessWidget {
  const FrostBenefit({super.key});

  @override
  Widget build(BuildContext context) {
    return BenefitContainer(
      icon: const BenefitIcon(icon: Icon(Icons.bolt)),
      title: 'Заморозку',
      subtitle: 'Теперь не страшно пропустить занятие',
      color: Theme.of(context).colorScheme.surface,
    );
  }
}
