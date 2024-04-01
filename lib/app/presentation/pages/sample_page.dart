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
    );
  }
}
