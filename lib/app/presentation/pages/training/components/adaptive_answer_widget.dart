import 'package:brain_training/app/domain/training/value_object/answer_type.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'list_answer.dart';
import 'voice_answer.dart';

class AdaptiveAnswerWidget<T> extends HookConsumerWidget {
  const AdaptiveAnswerWidget({
    super.key,
    required this.answerType,
    required this.onAnswered,
    required this.values,
    this.titleBuilder,
    this.toAnswer,
  }) : assert(answerType != AnswerType.voice || toAnswer != null);

  final AnswerType answerType;
  final void Function(T answer) onAnswered;
  final List<T> values;
  final Widget Function(T value)? titleBuilder;
  final T? Function(String? voice)? toAnswer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return switch (answerType) {
      AnswerType.voice => VoiceAnswer<T>(
          values: values,
          onAnswered: onAnswered,
          toAnswer: toAnswer!,
        ),
      AnswerType.list => ListAnswer<T>(
          values: values,
          titleBuilder: titleBuilder ?? (value) => Text(value.toString()),
          onAnswered: onAnswered,
        ),
    };
  }
}
