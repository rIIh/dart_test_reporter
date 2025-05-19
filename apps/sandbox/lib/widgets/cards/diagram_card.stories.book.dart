// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

part of 'diagram_card.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

// ignore: strict_raw_type
final DiagramCardComponent = Component<DiagramCard, DiagramCardArgs>(
  meta: meta.init(path: 'widgets/cards'),
  stories: [$Default.init(name: 'Default')],
);
typedef DiagramCardScenario = Scenario<DiagramCard, DiagramCardArgs>;

class DiagramCardStory extends Story<DiagramCard, DiagramCardArgs> {
  DiagramCardStory({
    super.name,
    super.setup,
    DiagramCardArgs? args,
    ArgsBuilder<DiagramCard, DiagramCardArgs>? argsBuilder,
  }) : super(
          args: args ?? DiagramCardArgs(),
          argsBuilder: argsBuilder ??
              (
                context,
                args,
              ) =>
                  DiagramCard(
                    key: args.key?.resolve(context),
                    backgroundImage: args.backgroundImage?.resolve(context),
                    backgroundColor: args.backgroundColor?.resolve(context),
                    value: args.value.resolve(context),
                    label: args.label.resolve(context),
                    color: args.color.resolve(context),
                  ),
        );

  @override
  DiagramCardStory init({required String name}) => DiagramCardStory(
        name: this.$name ?? name,
        setup: this.setup,
        args: this.args,
        argsBuilder: this.argsBuilder,
      );
}

class DiagramCardArgs extends StoryArgs<DiagramCard> {
  DiagramCardArgs({
    Arg<Key?>? key,
    Arg<DecorationImage?>? backgroundImage,
    Arg<Color?>? backgroundColor = const ColorArg(Color(4278190080)),
    Arg<double> value = const DoubleArg(0.0),
    Arg<String> label = const StringArg(''),
    Arg<Color> color = const ColorArg(Color(4278190080)),
  })  : this.key = key?.init(name: 'key'),
        this.backgroundImage = backgroundImage?.init(name: 'backgroundImage'),
        this.backgroundColor = backgroundColor?.init(name: 'backgroundColor'),
        this.value = value.init(name: 'value'),
        this.label = label.init(name: 'label'),
        this.color = color.init(name: 'color');

  DiagramCardArgs.fixed({
    Key? key,
    DecorationImage? backgroundImage,
    Color? backgroundColor = const Color(4278190080),
    double value = 0.0,
    String label = '',
    Color color = const Color(4278190080),
  })  : this.key = key == null ? null : Arg.fixed(key),
        this.backgroundImage =
            backgroundImage == null ? null : Arg.fixed(backgroundImage),
        this.backgroundColor =
            backgroundColor == null ? null : Arg.fixed(backgroundColor),
        this.value = Arg.fixed(value),
        this.label = Arg.fixed(label),
        this.color = Arg.fixed(color);

  final Arg<Key?>? key;

  final Arg<DecorationImage?>? backgroundImage;

  final Arg<Color?>? backgroundColor;

  final Arg<double> value;

  final Arg<String> label;

  final Arg<Color> color;

  @override
  List<Arg?> get list => [
        key,
        backgroundImage,
        backgroundColor,
        value,
        label,
        color,
      ];
}
