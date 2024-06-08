import 'package:flutter/material.dart';
import 'package:test_reporter_sandbox/widgets/profit_cell.dart';
import 'package:widgetbook/widgetbook.dart';

part 'profit_cell.stories.book.dart';

final meta = Meta<ProfitCell>();

final $Default = ProfitCellStory(
  args: ProfitCellArgs(
    color: const ColorArg(Colors.deepPurple),
    text: const StringArg("2 техники по борьбе с тревожкой"),
  ),
);

final $Second = ProfitCellStory(
  args: ProfitCellArgs(
    color: const ColorArg(Colors.red),
    text: const StringArg("Разнообразный и богатый опыт рамки"),
  ),
);
