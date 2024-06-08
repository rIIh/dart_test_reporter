import 'package:flutter/material.dart';

class ProfitCell extends StatelessWidget {
  final String text;
  final Color? _color;

  Color get color => _color ?? Colors.deepPurple.shade400;

  const ProfitCell({
    super.key,
    required this.text,
    required Color color,
  }) : _color = color;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox.square(
            dimension: 8,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(text)
        ],
      ),
    );
  }
}
