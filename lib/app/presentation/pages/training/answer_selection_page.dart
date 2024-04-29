import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:brain_training/app/domain/training/value_object/training_type.dart';
import 'package:brain_training/app/presentation/components/importer.dart';
import 'package:brain_training/app/presentation/routes/src/routes/routes.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../domain/training/value_object/answer_type.dart';

class AnswerSelectionPage extends HookConsumerWidget {
  const AnswerSelectionPage({
    super.key,
    required this.trainingType,
  });

  final TrainingType trainingType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO(yakitama5): 種類に応じて回答種類を選べるようにする
    const items = AnswerType.values;
    final cs = Theme.of(context).colorScheme;
    final ts = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.training.answerSelection.title),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final recomende = index == 0;
          final item = items[index];
          final selectionTitle =
              i18n.training.answerSelection.process(context: item);

          final content = Column(
            children: [
              Icon(
                item.iconData,
                size: 120,
                color: cs.primary,
              ),
              const Gap(16),
              Text(
                recomende
                    ? i18n.training.answerSelection
                        .recommended(answerType: selectionTitle)
                    : selectionTitle,
                style: ts.titleLarge,
              ),
            ],
          );

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

  Future<void> _onTap(BuildContext context, AnswerType answerType) async {
    switch (answerType) {
      case AnswerType.voice:
        final canAnswer = await canVoiceAnswer(context);
        if (!canAnswer) {
          // 声で答えることが不可能であれば、処理終了
          return;
        }
      case AnswerType.list:
      // do nothing
    }
    if (context.mounted) {
      ColoredWordRouteData(answerType).go(context);
    }
  }

  Future<bool> canVoiceAnswer(BuildContext context) async {
    final status = await Permission.microphone.request();
    switch (status) {
      case PermissionStatus.granted:
      case PermissionStatus.limited:
        return true;
      case PermissionStatus.denied:
      case PermissionStatus.restricted:
      case PermissionStatus.permanentlyDenied:
      case PermissionStatus.provisional:
        if (context.mounted) {
          final result = await showOkCancelAlertDialog(
            context: context,
            title: i18n.common.permission.openSettingsDialog.title,
            message: i18n.common.permission.openSettingsDialog
                .message(operation: i18n.common.microphone),
            okLabel: i18n.common.permission.openSettingsDialog.okLabel,
          );

          if (result == OkCancelResult.ok) {
            await openAppSettings();
          }
        }
    }
    return false;
  }
}
