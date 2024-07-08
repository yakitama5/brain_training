import 'package:brain_training/i18n/strings.g.dart';
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
    final recognizedText =
        ref.watch(sttRecognizedTextProvider(locale: i18n.$meta.locale)).value;
    ref.listen(sttRecognizedTextProvider(locale: i18n.$meta.locale), (p, c) {
      final lastAnswer = c.value;
      if (lastAnswer == null) {
        return;
      }

      final answer = toAnswer(lastAnswer);
      if (answer != null) {
        onAnswered(answer);
      }
    });

    return Column(
      mainAxisSize: MainAxisSize.min,
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
