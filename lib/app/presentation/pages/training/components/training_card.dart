import 'package:auto_size_text/auto_size_text.dart';
import 'package:brain_training/app/domain/training/value_object/rank_category.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../domain/training/entity/training_result.dart';
import '../../../../domain/training/value_object/training_type.dart';
import '../../../components/importer.dart';

enum TrainingCardType {
  home,
  trainingDetail,
}

class TrainingCard extends StatelessWidget {
  const TrainingCard({
    super.key,
    required this.trainingType,
    this.cardType = TrainingCardType.home,
    this.result,
    required this.rankCategory,
    required this.onStart,
  });

  factory TrainingCard.detail({
    required TrainingType trainingType,
    required RankCategory rankCategory,
    TrainingResult? result,
    required VoidCallback onStart,
  }) =>
      TrainingCard(
        trainingType: trainingType,
        cardType: TrainingCardType.trainingDetail,
        result: result,
        rankCategory: rankCategory,
        onStart: onStart,
      );

  bool get _isDetail => cardType == TrainingCardType.trainingDetail;

  final TrainingType trainingType;
  final TrainingCardType cardType;
  final TrainingResult? result;
  final RankCategory rankCategory;
  final VoidCallback onStart;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final ts = Theme.of(context).textTheme;

    final subhead = result == null
        ? switch (cardType) {
            TrainingCardType.home => i18n.training.trainingCard.inviteSubhead,
            TrainingCardType.trainingDetail =>
              i18n.training.trainingType.timeRequired(context: trainingType),
          }
        : i18n.training.trainingCard.doneSubhead;

    return FilledCard(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: cs.primaryContainer,
                child: Icon(
                  trainingType.iconData,
                  color: cs.onPrimaryContainer,
                ),
              ),
              const Gap(16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    i18n.training.trainingType.title(context: trainingType),
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
          if (_isDetail && result == null)
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                i18n.training.trainingType.description(context: trainingType),
                style: ts.bodyMedium,
              ),
            ),
          if (result != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: _Score(
                result: result!,
                rankCategory: rankCategory,
              ),
            ),
          if (result == null || cardType == TrainingCardType.trainingDetail)
            _TrainingButton(
              onPressed: onStart,
            ),
          if (result != null && cardType == TrainingCardType.trainingDetail)
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                i18n.training.trainingCard.playAgainCaption,
                style: ts.labelMedium?.merge(TextStyle(color: cs.outline)),
              ),
            )
        ],
      ),
    );
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
        AutoSizeText(
          label,
          style: ts.titleLarge,
          maxLines: 1,
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
          label: Text(i18n.training.trainingCard.start),
        ),
      );
}

class _Score extends StatelessWidget {
  const _Score({required this.result, required this.rankCategory});

  final TrainingResult result;
  final RankCategory rankCategory;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: Center(
              child: _IconWithLabel(
                iconData: rankCategory.iconData,
                // ignore: avoid_dynamic_calls
                label: i18n.training.result.rank[rankCategory.name](
                  context: result.rank,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: _IconWithLabel(
                iconData: Icons.sports_score,
                label: i18n.training.result.score(points: result.score),
              ),
            ),
          ),
        ],
      );
}
