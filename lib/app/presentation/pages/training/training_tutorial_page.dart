import 'package:brain_training/app/domain/training/value_object/training_type.dart';
import 'package:brain_training/app/presentation/routes/src/routes/routes.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TrainingTutorialPage extends HookConsumerWidget {
  const TrainingTutorialPage({
    super.key,
    required this.trainingType,
  });

  final TrainingType trainingType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO(yakitama5): 未着手
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.training.tutorial),
      ),
      body: Center(
        child: FilledButton(
          child: Text(i18n.common.start),
          onPressed: () =>
              AnswerSelectRouteData(trainingType).push<void>(context),
        ),
      ),
    );
  }
}
