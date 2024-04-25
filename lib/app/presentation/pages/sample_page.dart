import 'package:brain_training/app/domain/news/interface/news_repository.dart';
import 'package:brain_training/app/domain/news/model/value_object/news_category.dart';
import 'package:brain_training/app/domain/news/model/value_object/news_country.dart';
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
    final res = ref.watch(newsRepositoryProvider).fetchTodayHeadlines(
          category: NewsCategory.health,
          country: NewsCountry.jp,
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text('SamplePage'),
      ),
      body: FutureBuilder(
        future: res,
        builder: (context, snapshot) {
          if (snapshot.data == null || snapshot.hasError) {
            return const CircularProgressIndicator();
          }

          final newsList = snapshot.data!;
          return ListView.builder(
            itemCount: newsList.length,
            itemBuilder: (context, index) {
              final news = newsList[index];
              return ListTile(
                leading: news.urlToImage == null
                    ? const SizedBox.shrink()
                    : Image.network(news.urlToImage!),
                subtitle: Text('${news.url}'),
                title: Text('${news.title}'),
              );
            },
          );
        },
      ),
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
