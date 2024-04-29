import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../domain/training/value_object/answer_result.dart';

class AnswerResultWidget extends StatelessWidget {
  const AnswerResultWidget({super.key, required this.result});

  static const _size = 80.0;

  final AnswerResult? result;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return switch (result) {
      AnswerResult.correct => Icon(
          Icons.circle_outlined,
          size: _size,
          color: cs.outline,
        ),
      AnswerResult.incorrect => Icon(
          Icons.close,
          size: _size,
          color: cs.outline,
        ),
      _ => const Gap(_size),
    };
  }
}
