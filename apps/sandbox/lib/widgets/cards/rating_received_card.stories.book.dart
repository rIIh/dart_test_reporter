// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

part of 'rating_received_card.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

// ignore: strict_raw_type
final RatingReceivedCardComponent =
    Component<RatingReceivedCard, RatingReceivedCardArgs>(
  meta: meta.init(path: 'widgets/cards'),
  stories: [$Default.init(name: 'Default')],
);
typedef RatingReceivedCardScenario
    = Scenario<RatingReceivedCard, RatingReceivedCardArgs>;

class RatingReceivedCardStory
    extends Story<RatingReceivedCard, RatingReceivedCardArgs> {
  RatingReceivedCardStory({
    super.name,
    super.setup,
    RatingReceivedCardArgs? args,
    ArgsBuilder<RatingReceivedCard, RatingReceivedCardArgs>? argsBuilder,
  }) : super(
          args: args ?? RatingReceivedCardArgs(),
          argsBuilder: argsBuilder ??
              (
                context,
                args,
              ) =>
                  RatingReceivedCard(
                    key: args.key?.resolve(context),
                    backgroundColor: args.backgroundColor?.resolve(context),
                  ),
        );

  @override
  RatingReceivedCardStory init({required String name}) =>
      RatingReceivedCardStory(
        name: this.$name ?? name,
        setup: this.setup,
        args: this.args,
        argsBuilder: this.argsBuilder,
      );
}

class RatingReceivedCardArgs extends StoryArgs<RatingReceivedCard> {
  RatingReceivedCardArgs({
    Arg<Key?>? key,
    Arg<Color?>? backgroundColor = const ColorArg(Color(4278190080)),
  })  : this.key = key?.init(name: 'key'),
        this.backgroundColor = backgroundColor?.init(name: 'backgroundColor');

  RatingReceivedCardArgs.fixed({
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
