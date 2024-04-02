import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SamplePage extends StatefulWidget {
  const SamplePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<SamplePage> {
  final SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  bool _speechAvailable = false;
  String _lastWords = '';
  String _currentWords = '';
  final String _selectedLocaleId = 'es_MX';

  printLocales() async {
    final locales = await _speechToText.locales();
    for (final local in locales) {
      debugPrint(local.name);
      debugPrint(local.localeId);
    }
  }

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  void errorListener(SpeechRecognitionError error) {
    debugPrint(error.errorMsg);
  }

  Future<void> statusListener(String status) async {
    debugPrint('status $status');
    if (status == 'done' && _speechEnabled) {
      setState(() {
        _lastWords += ' $_currentWords';
        _currentWords = '';
        _speechEnabled = false;
      });
      await _startListening();
    }
  }

  /// This has to happen only once per app
  Future<void> _initSpeech() async {
    _speechAvailable = await _speechToText.initialize(
      onError: errorListener,
      onStatus: statusListener,
    );
    setState(() {});
  }

  /// Each time to start a speech recognition session
  Future _startListening() async {
    debugPrint('=================================================');
    await _stopListening();
    await Future.delayed(const Duration(milliseconds: 50));
    await _speechToText.listen(
      onResult: _onSpeechResult,
      localeId: _selectedLocaleId,
      listenOptions: SpeechListenOptions(
        listenMode: ListenMode.dictation,
      ),
    );
    setState(() {
      _speechEnabled = true;
    });
  }

  /// Manually stop the active speech recognition session
  /// Note that there are also timeouts that each platform enforces
  /// and the SpeechToText plugin supports setting timeouts on the
  /// listen method.
  Future _stopListening() async {
    setState(() {
      _speechEnabled = false;
    });
    await _speechToText.stop();
  }

  /// This is the callback that the SpeechToText plugin calls when
  /// the platform returns recognized words.
  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _currentWords = result.recognizedWords;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Speech Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Recognized words:',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Text(
                  _lastWords.isNotEmpty
                      ? '$_lastWords $_currentWords'
                      : _speechAvailable
                          ? 'Tap the microphone to start listening...'
                          : 'Speech not available',
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            _speechToText.isNotListening ? _startListening : _stopListening,
        tooltip: 'Listen',
        child: Icon(_speechToText.isNotListening ? Icons.mic_off : Icons.mic),
      ),
    );
  }
}

// class SamplePage extends HookConsumerWidget {
//   SamplePage({super.key});

//   final SpeechToText speech = SpeechToText();

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final text = useState('Common');

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('SamplePage'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text('hojge'),
//           FilledButton(
//             onPressed: () async {
//               await speech.initialize(
//                 onError: (error) => logger.d(error.errorMsg),
//                 onStatus: (status) async {
//                   logger.d(status);
//                   if (status == 'done' &&
//                       speech.isNotListening &&
//                       speech.isAvailable) {
//                     await Future<void>.delayed(
//                       const Duration(milliseconds: 50),
//                     );
//                     await startListening((result) => text.value = result);
//                   }
//                 },
//               );
//               await startListening((result) => text.value = result);
//             },
//             child: const Text('Record'),
//           ),
//         ],
//       ),
//     );
//   }

//   Future<void> startListening(void Function(String text) onResult) async {
//     if (speech.isAvailable) {
//       if (speech.isListening) {
//         await speech.stop();
//       } else {
//         await speech.listen(
//           onResult: (record) => onResult(record.recognizedWords),
//         );
//       }
//     }
//   }

//   void errorListener(SpeechRecognitionError error) {
//     debugPrint(error.errorMsg);
//   }
// }
