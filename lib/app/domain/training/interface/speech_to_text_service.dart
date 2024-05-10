import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'speech_to_text_service.g.dart';

@riverpod
SpeechToTextService speechToTextService(SpeechToTextServiceRef ref) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// 音声を文字列に変換するためのサービス
abstract class SpeechToTextService {
  Stream<List<String>> streamingRecognize({
    Stream<List<int>> audioStream,
    required String languageCode,
  });

  Future<void> stop();

  Future<void> close();
}
