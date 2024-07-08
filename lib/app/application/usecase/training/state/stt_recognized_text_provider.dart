import 'package:brain_training/app/application/config/app_build_config_provider.dart';
import 'package:brain_training/app/application/model/flavor.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:brain_training/utils/logger.dart';
import 'package:flutter/services.dart';
import 'package:google_speech/config/recognition_config.dart';
import 'package:google_speech/config/recognition_config_v1.dart';
import 'package:google_speech/config/streaming_recognition_config.dart';
import 'package:google_speech/speech_client_authenticator.dart';
import 'package:google_speech/speech_to_text.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sound_stream/sound_stream.dart';

import '../../../../../gen/assets.gen.dart';

part 'stt_recognized_text_provider.g.dart';

// HACK(yakitama5): dirty SpeechToTextServiceとしてドメイン化すること
@riverpod
Stream<String> sttRecognizedText(SttRecognizedTextRef ref,
    {required AppLocale locale}) async* {
  final flavor = ref.watch(appBuildConfigProvider.select((e) => e.flavor));
  final recorder = RecorderStream();
  await recorder.initialize();

  final audioStream = BehaviorSubject<List<int>>();
  final audioStreamSubscription = recorder.audioStream.listen(audioStream.add);

  await recorder.start();

  final json = switch (flavor) {
    Flavor.dev => Assets.json.speechToTextDev,
    Flavor.prod => Assets.json.speechToText,
  };
  final serviceAccount = ServiceAccount.fromString(
    await rootBundle.loadString(json),
  );
  final speechToText = SpeechToText.viaServiceAccount(serviceAccount);
  final config = _getConfig(locale);

  final responseStream = speechToText.streamingRecognize(
    StreamingRecognitionConfig(
      config: config,
      interimResults: true,
    ),
    audioStream,
  );

  // dispose管理
  ref.onDispose(() {
    recorder.stop();
    audioStreamSubscription.cancel();
    audioStream.close();
  });

  // 最後の単語だけを検出するための試作
  // HACK(yakitama5): application層とinfra層に分ける
  var prevLength = 0;
  yield* responseStream.map((snapshot) {
    logger.d('Listen');
    return snapshot.results
        .map((e) => e.alternatives.first.transcript.replaceAll(' ', ''))
        .join('');
  }).where((joinWord) {
    logger.d('JoinWord: $joinWord');
    if (joinWord.length <= prevLength) {
      return false;
    }
    return true;
  }).map((joinWord) {
    final word = joinWord.substring(prevLength).trim().split(' ').last;
    prevLength = joinWord.length;
    logger.d('Word: $word');
    return word;
  });
}

RecognitionConfig _getConfig(AppLocale locale) => RecognitionConfig(
      encoding: AudioEncoding.LINEAR16,
      model: RecognitionModel.command_and_search,
      enableAutomaticPunctuation: false,
      sampleRateHertz: 16000,
      speechContexts: [
        // HACK(yakitama5): 言語に応じた単語リストをコンフィグ化
        SpeechContext([
          '青',
          '赤',
          '黒',
          '緑',
          '青色',
          '赤色',
          '黒色',
          '緑色',
          'Blue',
          'Red',
          'Black',
          'Green'
        ])
      ],
      languageCode: switch (locale) {
        AppLocale.ja => 'ja-JP',
        AppLocale.en => 'en-US',
      },
    );
