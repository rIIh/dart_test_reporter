// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

part of 'frost_received_card.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

// ignore: strict_raw_type
final FrostReceivedCardComponent =
    Component<FrostReceivedCard, FrostReceivedCardArgs>(
  meta: meta.init(path: 'widgets/cards'),
  stories: [$Default.init(name: 'Default')],
);
typedef FrostReceivedCardScenario
    = Scenario<FrostReceivedCard, FrostReceivedCardArgs>;

class FrostReceivedCardStory
    extends Story<FrostReceivedCard, FrostReceivedCardArgs> {
  FrostReceivedCardStory({
    super.name,
    super.setup,
    FrostReceivedCardArgs? args,
    ArgsBuilder<FrostReceivedCard, FrostReceivedCardArgs>? argsBuilder,
  }) : super(
          args: args ?? FrostReceivedCardArgs(),
          argsBuilder: argsBuilder ??
              (
                context,
                args,
              ) =>
                  FrostReceivedCard(
                    key: args.key?.resolve(context),
                    backgroundColor: args.backgroundColor?.resolve(context),
                  ),
        );

  @override
  FrostReceivedCardStory init({required String name}) => FrostReceivedCardStory(
        name: this.$name ?? name,
        setup: this.setup,
        args: this.args,
        argsBuilder: this.argsBuilder,
      );
}

class FrostReceivedCardArgs extends StoryArgs<FrostReceivedCard> {
  FrostReceivedCardArgs({
    Arg<Key?>? key,
    Arg<Color?>? backgroundColor = const ColorArg(Color(4278190080)),
  })  : this.key = key?.init(name: 'key'),
        this.backgroundColor = backgroundColor?.init(name: 'backgroundColor');

  FrostReceivedCardArgs.fixed({
    Key? key,
    Color? backgroundColor = const Color(4278190080),
  })  : this.key = key == null ? null : Arg.fixed(key),
        this.backgroundColor =
            backgroundColor == null ? null : Arg.fixed(backgroundColor);

  final Arg<Key?>? key;

  final Arg<Color?>? backgroundColor;

  @override
  List<Arg?> get list => [
        key,
        backgroundColor,
      ];
}
