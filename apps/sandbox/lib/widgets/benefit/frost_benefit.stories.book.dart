// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

part of 'frost_benefit.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

// ignore: strict_raw_type
final FrostBenefitComponent = Component<FrostBenefit, FrostBenefitArgs>(
  meta: meta.init(path: 'widgets/benefit'),
  stories: [$Default.init(name: 'Default')],
);
typedef FrostBenefitScenario = Scenario<FrostBenefit, FrostBenefitArgs>;

class FrostBenefitStory extends Story<FrostBenefit, FrostBenefitArgs> {
  FrostBenefitStory({
    super.name,
    super.setup,
    FrostBenefitArgs? args,
    ArgsBuilder<FrostBenefit, FrostBenefitArgs>? argsBuilder,
  }) : super(
          args: args ?? FrostBenefitArgs(),
          argsBuilder: argsBuilder ??
              (
                context,
                args,
              ) =>
                  FrostBenefit(key: args.key?.resolve(context)),
        );

  @override
  FrostBenefitStory init({required String name}) => FrostBenefitStory(
        name: this.$name ?? name,
        setup: this.setup,
        args: this.args,
        argsBuilder: this.argsBuilder,
      );
}

class FrostBenefitArgs extends StoryArgs<FrostBenefit> {
  FrostBenefitArgs({Arg<Key?>? key}) : this.key = key?.init(name: 'key');

  FrostBenefitArgs.fixed({Key? key})
      : this.key = key == null ? null : Arg.fixed(key);

  final Arg<Key?>? key;

  @override
  List<Arg?> get list => [key];
}
