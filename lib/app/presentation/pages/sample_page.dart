import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../../utils/logger.dart';

class SamplePage extends HookConsumerWidget {
  SamplePage({super.key});

  final SpeechToText speech = SpeechToText();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SamplePage'),
      ),
      body: Container(),
    );
  }

  Future<void> startListening(
    ValueNotifier<String> text,
    ValueNotifier<bool> enableListening,
  ) async {
    if (speech.isAvailable) {
      if (speech.isListening && enableListening.value) {
        await stopListening(enableListening);
      } else if (!enableListening.value) {
        enableListening.value = true;
        await speech.listen(
          onResult: (record) => text.value = record.recognizedWords,
        );
      }
    }
  }

  Future<void> stopListening(
    ValueNotifier<bool> enableListening,
  ) async {
    if (speech.isAvailable) {
      enableListening.value = false;
      await speech.stop();
    }
  }

  Future<void> statusListener(
    String status,
    ValueNotifier<String> text,
    ValueNotifier<bool> enableListening,
  ) async {
    logger.d(status);

    if (status == 'done' && enableListening.value) {
      await stopListening(enableListening);

      await Future<void>.delayed(
        const Duration(milliseconds: 50),
      );
      await startListening(text, enableListening);
    }
  }

  void errorListener(SpeechRecognitionError error) {
    debugPrint(error.errorMsg);
  }
}
