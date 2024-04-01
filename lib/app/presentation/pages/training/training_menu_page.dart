import 'package:brain_training/app/domain/training/value_object/training_type.dart';
import 'package:brain_training/app/presentation/pages/home/home_page.dart';
import 'package:brain_training/app/presentation/pages/training/components/training_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TrainingMenuPage extends StatelessWidget {
  const TrainingMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final menu = [TrainingType.coloredWord, TrainingType.themeShiritori];
    final completeMenu = [TrainingType.addMinus];

    return Scaffold(
      appBar: AppBar(
        title: const Text('脳トレメニュー'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ...menu.map(
                (e) => TrainingCard.detail(
                  trainingType: e,
                ),
              ),
              const Gap(32),
              HomePane(
                label: '実施済のトレーニング',
                child: Column(
                  children: completeMenu
                      .map((e) => TrainingCard.done(trainingType: e))
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
