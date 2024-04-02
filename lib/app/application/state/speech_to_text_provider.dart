import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:speech_to_text/speech_to_text.dart';

final sTTProvider = ChangeNotifierProvider((ref) {
  final stt = SpeechToText();
  return STTNotifier(speechToText: stt);
});

class STTNotifier extends ChangeNotifier {
  STTNotifier({required this.speechToText}) {
    _initialize();
  }

  SpeechToText speechToText;
  Future<void> _initialize() async {
    await speechToText.initialize();
  }

  Future<void> startListening() async {
    await speechToText.listen(
      onResult: (result) {
        debugPrint('$result');
        notifyListeners();
      },
      listenFor: const Duration(seconds: 60),
    );
    notifyListeners();
  }

  Future<void> stopListening() async {
    await speechToText.stop();
    notifyListeners();
  }

  Future<void> quitListening() async {
    await speechToText.cancel();
    notifyListeners();
  }
}
