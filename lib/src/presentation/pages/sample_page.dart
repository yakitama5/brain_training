import 'package:brain_training/src/presentation/pages/colored_word/colored_word_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SamplePage extends HookConsumerWidget {
  SamplePage({super.key});

  final SpeechToText speech = SpeechToText();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SamplePage'),
      ),
      body: FilledButton(
        child: const Text('ColoredWord'),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (context) => ColoredWordPage()),
        ),
      ),
    );
  }
}
