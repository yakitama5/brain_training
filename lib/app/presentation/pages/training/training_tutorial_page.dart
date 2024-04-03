import 'package:brain_training/app/presentation/routes/src/routes/routes.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TrainingTutorialPage extends HookConsumerWidget {
  const TrainingTutorialPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.training.tutorial),
      ),
      body: Center(
        child: FilledButton(
          child: Text(i18n.common.start),
          onPressed: () =>
              const ColoredWordSelectRouteData().push<void>(context),
        ),
      ),
    );
  }
}
