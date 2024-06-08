import 'package:flutter/material.dart';

class ReceivedIcon extends StatelessWidget {
  final Widget icon;

  const ReceivedIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.square(
          dimension: 50,
          child: ClipOval(
            child: DecoratedBox(
              decoration: const BoxDecoration(color: Colors.deepPurple),
              child: IconTheme(
                data: const IconThemeData(
                  color: Colors.white,
                  size: 26,
                ),
                child: Center(
                  child: SizedBox.square(
                    dimension: 26,
                    child: icon,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Positioned(
          right: 0,
          bottom: 0,
          child: Placeholder(
            fallbackWidth: 18,
            fallbackHeight: 18,
          ),
        ),
      ],
    );
  }
}
