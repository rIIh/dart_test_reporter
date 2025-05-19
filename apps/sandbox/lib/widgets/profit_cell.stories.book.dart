// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

part of 'profit_cell.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

// ignore: strict_raw_type
final ProfitCellComponent = Component<ProfitCell, ProfitCellArgs>(
  meta: meta.init(path: 'widgets'),
  stories: [
    $Default.init(name: 'Default'),
    $Second.init(name: 'Second'),
  ],
);
typedef ProfitCellScenario = Scenario<ProfitCell, ProfitCellArgs>;

class ProfitCellStory extends Story<ProfitCell, ProfitCellArgs> {
  ProfitCellStory({
    super.name,
    super.setup,
    ProfitCellArgs? args,
    ArgsBuilder<ProfitCell, ProfitCellArgs>? argsBuilder,
  }) : super(
          args: args ?? ProfitCellArgs(),
          argsBuilder: argsBuilder ??
              (
                context,
                args,
              ) =>
                  ProfitCell(
                    key: args.key?.resolve(context),
                    text: args.text.resolve(context),
                    color: args.color.resolve(context),
                  ),
        );

  @override
  ProfitCellStory init({required String name}) => ProfitCellStory(
        name: this.$name ?? name,
        setup: this.setup,
        args: this.args,
        argsBuilder: this.argsBuilder,
      );
}

class ProfitCellArgs extends StoryArgs<ProfitCell> {
  ProfitCellArgs({
    Arg<Key?>? key,
    Arg<String> text = const StringArg(''),
    Arg<Color> color = const ColorArg(Color(4278190080)),
  })  : this.key = key?.init(name: 'key'),
        this.text = text.init(name: 'text'),
        this.color = color.init(name: 'color');

  ProfitCellArgs.fixed({
    Key? key,
    String text = '',
    Color color = const Color(4278190080),
  })  : this.key = key == null ? null : Arg.fixed(key),
        this.text = Arg.fixed(text),
        this.color = Arg.fixed(color);

  final Arg<Key?>? key;

  final Arg<String> text;

  final Arg<Color> color;

  @override
  List<Arg?> get list => [
        key,
        text,
        color,
      ];
}
