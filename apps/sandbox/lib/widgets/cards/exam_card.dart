import 'package:flutter/material.dart';

// TODO(@melvspace): 06/07/24 rename this component according to design
class ExamCard extends StatelessWidget {
  /// Defaults to [IntrovertColors.fillColorGray1]
  final Color? _backgroundColor;
  final DecorationImage? backgroundImage;
  final Widget child;

  Color getBackgroundColor(BuildContext context) =>
      _backgroundColor ?? Theme.of(context).colorScheme.surfaceContainer;

  const ExamCard({
    super.key,
    this.backgroundImage,
    Color? backgroundColor,
    required this.child,
  }) : _backgroundColor = backgroundColor;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
      child: Container(
        constraints: const BoxConstraints.tightFor(width: 114),
        padding: const EdgeInsets.only(top: 16, bottom: 12) + //
            const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: getBackgroundColor(context),
          image: backgroundImage,
          borderRadius: BorderRadius.circular(16),
        ),
        child: DefaultTextStyle.merge(
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall,
          child: child,
        ),
      ),
    );
  }
}
