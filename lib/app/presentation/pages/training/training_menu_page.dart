import 'package:brain_training/app/application/usecase/settings/state/rank_category_provider.dart';
import 'package:brain_training/app/domain/training/value_object/training_type.dart';
import 'package:brain_training/app/presentation/pages/training/components/training_card.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../home/components/headline_pane.dart';

class TrainingMenuPage extends HookConsumerWidget {
  const TrainingMenuPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO(yakitama5): 当日の実施状況を基に表示判定を行う
    final menu = [TrainingType.coloredWord, TrainingType.themeShiritori];
    final completeMenu = [TrainingType.addMinus];
    final rankCategory = ref.watch(rankCategoryProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.training.menu),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ...menu.map(
                (e) => TrainingCard.detail(
                  trainingType: e,
                  rankCategory: rankCategory,
                ),
              ),
              const Gap(32),
              HeadlinePane(
                label: i18n.training.doneMenu,
                child: Column(
                  children: completeMenu
                      .map(
                        (e) => TrainingCard(
                          trainingType: e,
                          rankCategory: rankCategory,
                        ),
                      )
                      .toList(),
                ),
              ),
              const Gap(120),
            ],
          ),
        ),
      ),
    );
  }
}
