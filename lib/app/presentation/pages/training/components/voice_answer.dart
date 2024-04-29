import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../../utils/logger.dart';
import '../../../../domain/read_color/value_object/colored_word.dart';

class VoiceAnswer extends HookConsumerWidget {
  VoiceAnswer({super.key, required this.onAnswered});

  final void Function(ColoredWord answer) onAnswered;

  final SpeechToText client = SpeechToText();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ts = Theme.of(context).textTheme;
    final enableListening = useRef(true);
    final listenText = useState('');

    useEffect(
      () {
        startListening(enableListening, listenText);
        return () {
          enableListening.value = false;
          client.cancel();
        };
      },
      [client],
    );

    return Column(
      children: [
        const Icon(
          Icons.mic,
          size: 92,
        ),
        const Gap(12),
        // TODO(yakitama5): 多言語化対応
        Text('声で回答して下さい', style: ts.headlineMedium),
        Text(listenText.value, style: ts.headlineMedium),
      ],
    );
  }

  Future<void> startListening(
    ObjectRef<bool> enableListening,
    ValueNotifier<String> listenText,
  ) async {
    await client.initialize(
      onStatus: (status) => onStatus(status, enableListening, listenText),
    );
    return onListen(enableListening, listenText);
  }

  void onStatus(
    String status,
    ObjectRef<bool> enableListening,
    ValueNotifier<String> listenText,
  ) {
    // ステータスの変化を受け取って保存
    if (status == 'listening') {
      // 入力音声の取得中
      // - SpeechRecognition.onStart
      // - SpeechRecognition.onSpeechStart
    } else if (status == 'notListening') {
      // 入力音声の取得停止中
      // - SpeechRecognition.onEnd
    } else if (status == 'done' || status == 'doneNoResult') {
      // 音声認識が完了(結果あり)
      // - SpeechRecognition.onEnd、かつ、結果があるとき
      // 音声認識が完了(結果なし)
      // - SpeechRecognition.onEnd、かつ、結果がないとき
      if (enableListening.value) {
        onListen(enableListening, listenText);
      }
    }
  }

  Future<void> onListen(
    ObjectRef<bool> enableListening,
    ValueNotifier<String> listenText,
  ) async {
    await client.listen(
      pauseFor: const Duration(seconds: 10),
      onResult: (result) {
        listenText.value = result.recognizedWords;

        logger.d(result.alternates.map((e) => e.recognizedWords).join(','));
        final answer = ColoredWord.values.firstWhereOrNull(
          (type) => result.alternates
              .where(
                (word) => word.recognizedWords.contains(
                  i18n.training.coloredWord.readWord(context: type),
                ),
              )
              .isNotEmpty,
        );

        if (answer == null) {
          // TODO(yakitama5): 聞こえにくい！みたいな文字を出す
          return;
        }

        return onAnswered(answer);
      },
      listenFor: const Duration(seconds: 60),
      listenOptions: SpeechListenOptions(
        listenMode: ListenMode.dictation,
      ),
    );
  }
}
