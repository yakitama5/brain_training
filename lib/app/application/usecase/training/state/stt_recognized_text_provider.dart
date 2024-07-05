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
Stream<List<String>> sttRecognizedText(SttRecognizedTextRef ref) async* {
  final recorder = RecorderStream();
  await recorder.initialize();

  final audioStream = BehaviorSubject<List<int>>();
  final audioStreamSubscription = recorder.audioStream.listen(audioStream.add);

  await recorder.start();

  final serviceAccount = ServiceAccount.fromString(
    await rootBundle.loadString(Assets.sensitive.googleSpeechToTextKey),
  );
  final speechToText = SpeechToText.viaServiceAccount(serviceAccount);
  final config = _getConfig();

  final responseStream = speechToText.streamingRecognize(
    StreamingRecognitionConfig(config: config, interimResults: true),
    audioStream,
  );

  // dispose管理
  ref.onDispose(() {
    recorder.stop();
    audioStreamSubscription.cancel();
    audioStream.close();
  });

  yield* responseStream.map((snapshot) {
    return snapshot.results
        .map((e) => e.alternatives.first.transcript)
        .toList();
  });
}

RecognitionConfig _getConfig() => RecognitionConfig(
      encoding: AudioEncoding.LINEAR16,
      model: RecognitionModel.latest_short,
      enableAutomaticPunctuation: false,
      sampleRateHertz: 16000,
      languageCode: 'ja-JP',
    );
