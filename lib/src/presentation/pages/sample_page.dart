import 'dart:math';

import 'package:brain_training/src/domain/read_color/entity/mixed_colored_word.dart';
import 'package:brain_training/src/domain/read_color/value_object/colored_word.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'colored_word/components/mixed_colored_word_text.dart';

class SamplePage extends HookConsumerWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final word = useState(_createMixedWord());

    return Scaffold(
      appBar: AppBar(
        title: const Text('SamplePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MixedColoredWordText(coloredWord: word.value),
            FilledButton.icon(
              onPressed: () => word.value = _createMixedWord(),
              icon: const Icon(Icons.shuffle),
              label: const Text('シャッフル'),
            ),
          ],
        ),
      ),
    );
  }

  MixedColoredWord _createMixedWord() {
    final max = ColoredWord.values.length;

    return MixedColoredWord(
      color: ColoredWord.values[Random().nextInt(max)],
      word: ColoredWord.values[Random().nextInt(max)],
    );
  }
}
