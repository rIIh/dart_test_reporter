import 'package:flutter/widgets.dart';
import 'package:test_reporter_sandbox/widgets/cards/diagram_card.dart';
import 'package:widgetbook/widgetbook.dart';

part 'diagram_card.stories.book.dart';

final meta = Meta<DiagramCard>();

final $Default = DiagramCardStory(
  args: DiagramCardArgs(
    backgroundColor: null,
    value: const DoubleSliderArg(.75, min: 0, max: 1, step: 0.01),
    color: const ColorArg(Color(0xFFE5A500)),
    label: const StringArg('правильных ответов'),
  ),
);
