import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_speech/google_speech.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sound_stream/sound_stream.dart';

import '../../../gen/assets.gen.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mic Stream Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AudioRecognize(),
    );
  }
}

class AudioRecognize extends StatefulWidget {
  const AudioRecognize({super.key});

  @override
  State<StatefulWidget> createState() => _AudioRecognizeState();
}

class _AudioRecognizeState extends State<AudioRecognize> {
  final RecorderStream _recorder = RecorderStream();

  bool recognizing = false;
  bool recognizeFinished = false;
  String text = '';
  StreamSubscription<List<int>>? _audioStreamSubscription;
  BehaviorSubject<List<int>>? _audioStream;

  @override
  void initState() {
    super.initState();

    _recorder.initialize();
  }

  Future<void> streamingRecognize() async {
    _audioStream = BehaviorSubject<List<int>>();
    _audioStreamSubscription = _recorder.audioStream.listen((event) {
      _audioStream!.add(event);
    });

    await _recorder.start();

    setState(() {
      recognizing = true;
    });
    final serviceAccount = ServiceAccount.fromString(
      await rootBundle.loadString(Assets.sensitive.googleSpeechToTextKey),
    );
    final speechToText = SpeechToText.viaServiceAccount(serviceAccount);
    final config = _getConfig();

    final responseStream = speechToText.streamingRecognize(
      StreamingRecognitionConfig(config: config, interimResults: true),
      _audioStream!,
    );

    var responseText = '';

    responseStream.listen(
      (data) {
        final currentText =
            data.results.map((e) => e.alternatives.first.transcript).join('\n');

        if (data.results.first.isFinal) {
          responseText += '\n$currentText';
          setState(() {
            text = responseText;
            recognizeFinished = true;
          });
        } else {
          setState(() {
            text = '$responseText\n$currentText';
            recognizeFinished = true;
          });
        }
      },
      onDone: () {
        setState(() {
          recognizing = false;
        });
      },
    );
  }

  Future<void> stopRecording() async {
    await _recorder.stop();
    await _audioStreamSubscription?.cancel();
    await _audioStream?.close();
    setState(() {
      recognizing = false;
    });
  }

  RecognitionConfig _getConfig() => RecognitionConfig(
        encoding: AudioEncoding.LINEAR16,
        enableAutomaticPunctuation: true,
        sampleRateHertz: 16000,
        languageCode: 'ja-JP',
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio File Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            if (recognizeFinished)
              _RecognizeContent(
                text: text,
              ),
            ElevatedButton(
              onPressed: recognizing ? stopRecording : streamingRecognize,
              child: recognizing
                  ? const Text('Stop recording')
                  : const Text('Start Streaming from mic'),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class _RecognizeContent extends StatelessWidget {
  const _RecognizeContent({this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          const Text(
            'The text recognized by the Google Speech Api:',
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            text ?? '---',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}

// class SamplePage extends StatefulWidget {
//   const SamplePage({super.key});

//   @override
//   SamplePageState createState() => SamplePageState();
// }

// class SamplePageState extends State<SamplePage> {
//   SpeechToText? speech;
//   bool _listenLoop = false;
//   String lastHeard = '';
//   StringBuffer totalHeard = StringBuffer();

//   void _onStatus(String status) {
//     if ('done' == status) {
//       logger.d('onStatus(): $status ');
//       startListening();
//     }
//   }

//   Future<void> startListening({bool forced = false}) async {
//     if (forced) {
//       setState(() {
//         _listenLoop = !_listenLoop;
//       });
//     }
//     if (!_listenLoop) {
//       return;
//     }
//     logger.d('startListening()');
//     speech = SpeechToText();

//     final available = await speech!.initialize(
//       onStatus: _onStatus,
//       //onError: (val) => logger.d('onError: $val'),
//       onError: onError,
//       debugLogging: true,
//     );
//     if (available) {
//       logger.d('startListening() -> _available = true');
//       await listen();
//     } else {
//       logger.d('startListening() -> _available = false');
//     }
//   }

//   Future<void> listen() async {
//     logger.d('speech!.listen()');
//     await speech!.listen(
//       onResult: onResult,
//     ); // Doesn't do anything
//   }

//   Future<void> onError(SpeechRecognitionError val) async {
//     logger.d('onError(): ${val.errorMsg}');
//   }

//   Future<void> onResult(SpeechRecognitionResult val) async {
//     logger
//       ..d('onResult()')
//       ..d('val.alternates ${val.alternates}');
//     if (val.finalResult) {
//       setState(() {
//         lastHeard = val.recognizedWords;
//         totalHeard
//           ..write(lastHeard)
//           ..write(' ');
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('サンプル'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(_listenLoop ? Icons.mic : Icons.mic_external_off),
//             const Text(
//               'You said:',
//             ),
//             Text(lastHeard),
//             const Text(
//               'Heard so far:',
//             ),
//             Text(totalHeard.toString()),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => startListening(forced: true),
//         tooltip: 'Start listening',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
