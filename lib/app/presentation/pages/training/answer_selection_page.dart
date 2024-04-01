import 'package:brain_training/app/presentation/components/importer.dart';
import 'package:brain_training/app/presentation/routes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/training/value_object/answer_type.dart';

class AnswerSelectionPage extends HookConsumerWidget {
  const AnswerSelectionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const items = AnswerType.values;
    final cs = Theme.of(context).colorScheme;
    final ts = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('回答方法'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final recomende = index == 0;
          final item = items[index];

          final content = Column(
            children: [
              Icon(
                item.iconData,
                size: 120,
                color: cs.primary,
              ),
              const Gap(16),
              Text(
                item.text,
                style: ts.titleLarge,
              ),
            ],
          );

          // HACK(yakitama5): sealedClassでどうにかできる？
          return recomende
              ? FilledCard(
                  child: content,
                  onTap: () => _onTap(context, item),
                )
              : OutlinedCard(
                  child: content,
                  onTap: () => _onTap(context, item),
                );
        },
        separatorBuilder: (BuildContext context, int index) => const Gap(16),
      ),
    );
  }

  void _onTap(BuildContext context, AnswerType answerType) {
    ColoredWordRouteData(answerType).go(context);
  }
}
