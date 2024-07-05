import 'package:brain_training/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/usecase/training/state/stt_recognized_text_provider.dart';

class VoiceAnswer<T> extends HookConsumerWidget {
  const VoiceAnswer({
    super.key,
    required this.onAnswered,
    required this.values,
    required this.toAnswer,
  });

  final void Function(T answer) onAnswered;
  final List<T> values;
  final T? Function(String? voice) toAnswer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ts = Theme.of(context).textTheme;
    final recognizedText = ref.watch(sttRecognizedTextProvider).value?.last;
    ref.listen(sttRecognizedTextProvider, (p, c) {
      logger.d(c.value?.join('、'));
      final lastAnswer = c.value?.last;

      final answer = toAnswer(lastAnswer);
      if (answer != null) {
        onAnswered(answer);
      }
    });

    return Column(
      children: [
        const Icon(
          Icons.mic,
          size: 92,
        ),
        const Gap(12),
        // TODO(yakitama5): 多言語化対応
        Text('声で回答して下さい', style: ts.headlineMedium),
        Text(recognizedText ?? '?', style: ts.headlineMedium),
      ],
    );
  }
}
