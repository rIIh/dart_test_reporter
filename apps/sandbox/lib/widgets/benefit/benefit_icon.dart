import 'package:flutter/material.dart';

class BenefitIcon extends StatelessWidget {
  final Widget icon;

  const BenefitIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        SizedBox.square(
          dimension: 28,
          child: ClipOval(
            child: DecoratedBox(
              decoration: const BoxDecoration(color: Colors.deepPurple),
              child: IconTheme(
                data: const IconThemeData(
                  color: Colors.white,
                  size: 14,
                ),
                child: Center(
                  child: SizedBox.square(
                    dimension: 14,
                    child: icon,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Positioned(
          right: -1,
          bottom: -1,
          child: Placeholder(
            fallbackHeight: 14,
            fallbackWidth: 14,
          ),
        ),
      ],
    );
  }
}
