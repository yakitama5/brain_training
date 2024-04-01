import 'package:brain_training/app/presentation/routes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../domain/training/value_object/training_type.dart';
import '../../../components/importer.dart';

enum TrainingCardType {
  home,
  done,
  trainingDetail,
}

class TrainingCard extends StatelessWidget {
  const TrainingCard({
    super.key,
    required this.trainingType,
    this.cardType = TrainingCardType.home,
  });

  factory TrainingCard.done({required TrainingType trainingType}) =>
      TrainingCard(
        trainingType: trainingType,
        cardType: TrainingCardType.done,
      );
  factory TrainingCard.detail({required TrainingType trainingType}) =>
      TrainingCard(
        trainingType: trainingType,
        cardType: TrainingCardType.trainingDetail,
      );

  bool get _isHome => cardType == TrainingCardType.home;
  bool get _isDone => cardType == TrainingCardType.done;
  bool get _isDetail => cardType == TrainingCardType.trainingDetail;

  final TrainingType trainingType;
  final TrainingCardType cardType;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final ts = Theme.of(context).textTheme;

    final subhead = switch (cardType) {
      TrainingCardType.home => '今日の脳トレを始めましょう',
      TrainingCardType.done => '今日のスコア',
      TrainingCardType.trainingDetail => trainingType.subhead,
    };

    return FilledCard(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: cs.primary,
              ),
              const Gap(16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trainingType.title,
                    style: ts.titleMedium,
                  ),
                  Text(
                    subhead,
                    style: ts.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
          const Gap(24),
          if (_isDetail)
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                trainingType.description,
                style: ts.bodyMedium,
              ),
            ),
          switch (cardType) {
            TrainingCardType.home ||
            TrainingCardType.trainingDetail =>
              _TrainingButton(
                onPressed: () => onTraining(context),
              ),
            TrainingCardType.done => const _Score(),
          },
        ],
      ),
    );
  }

  void onTraining(BuildContext context) {
    switch (trainingType) {
      case TrainingType.coloredWord:
        const ColoredWordTutorialRouteData().push<void>(context);
        return;
      case TrainingType.themeShiritori:
      case TrainingType.addMinus:
        return;
    }
  }
}

class _IconWithLabel extends StatelessWidget {
  const _IconWithLabel({
    required this.iconData,
    required this.label,
  });

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final ts = Theme.of(context).textTheme;

    return Column(
      children: [
        Icon(
          iconData,
          color: cs.primary,
          size: 32,
        ),
        const Gap(16),
        Text(
          label,
          style: ts.titleLarge,
        ),
      ],
    );
  }
}

class _TrainingButton extends StatelessWidget {
  const _TrainingButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => WidthFillBox(
        child: FilledButton.icon(
          onPressed: onPressed,
          icon: const Icon(Icons.add),
          label: const Text('測定'),
        ),
      );
}

class _Score extends StatelessWidget {
  const _Score();

  @override
  Widget build(BuildContext context) => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _IconWithLabel(iconData: Icons.score, label: '横綱級'),
          _IconWithLabel(iconData: Icons.sports_score, label: '15点'),
        ],
      );
}
