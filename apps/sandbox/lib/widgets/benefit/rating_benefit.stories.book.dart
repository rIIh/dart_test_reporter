// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

part of 'rating_benefit.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

// ignore: strict_raw_type
final RatingBenefitComponent = Component<RatingBenefit, RatingBenefitArgs>(
  meta: meta.init(path: 'widgets/benefit'),
  stories: [$Default.init(name: 'Default')],
);
typedef RatingBenefitScenario = Scenario<RatingBenefit, RatingBenefitArgs>;

class RatingBenefitStory extends Story<RatingBenefit, RatingBenefitArgs> {
  RatingBenefitStory({
    super.name,
    super.setup,
    RatingBenefitArgs? args,
    ArgsBuilder<RatingBenefit, RatingBenefitArgs>? argsBuilder,
  }) : super(
          args: args ?? RatingBenefitArgs(),
          argsBuilder: argsBuilder ??
              (
                context,
                args,
              ) =>
                  RatingBenefit(key: args.key?.resolve(context)),
        );

  @override
  RatingBenefitStory init({required String name}) => RatingBenefitStory(
        name: this.$name ?? name,
        setup: this.setup,
        args: this.args,
        argsBuilder: this.argsBuilder,
      );
}

class RatingBenefitArgs extends StoryArgs<RatingBenefit> {
  RatingBenefitArgs({Arg<Key?>? key}) : this.key = key?.init(name: 'key');

  RatingBenefitArgs.fixed({Key? key})
      : this.key = key == null ? null : Arg.fixed(key);

  final Arg<Key?>? key;

  @override
  List<Arg?> get list => [key];
}
