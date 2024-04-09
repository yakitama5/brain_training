import 'package:brain_training/app/domain/training/entity/training_daily_summary.dart';
import 'package:brain_training/app/domain/training/interface/training_repository.dart';
import 'package:brain_training/app/domain/training/value_object/result_rank.dart';
import 'package:brain_training/app/infrastructure/firebase/firestore/model/firestore_colored_word_result_model.dart';
import 'package:brain_training/app/infrastructure/firebase/firestore/model/firestore_training_daily_summary_model.dart';
import 'package:brain_training/app/infrastructure/firebase/firestore/state/firestore.dart';
import 'package:brain_training/app/infrastructure/firebase/firestore/state/firestore_colored_word_result_provider.dart';
import 'package:brain_training/app/infrastructure/firebase/firestore/state/firestore_training_daily_summary_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Firebaseを利用したリポジトリの実装
class FirebaseTrainingRepository implements TrainingRepository {
  const FirebaseTrainingRepository(this.ref);

  final Ref ref;

  @override
  Stream<TrainingDailySummary?> fetchDailySummary({
    required String userId,
    required DateTime date,
  }) {
    // 当日日付指定のため、00:00から翌00:00までの範囲を指定
    final from = DateTime(date.year, date.month, date.day);
    final to = DateTime(date.year, date.month, date.day + 1);

    return ref
        .read(trainingDailySummaryCollectionProvider(userId))
        .where(
          'doneAt',
          isGreaterThanOrEqualTo: Timestamp.fromDate(from),
          isLessThan: Timestamp.fromDate(to),
        )
        .limit(1)
        .snapshots()
        // 読み込み中のドキュメントが存在する場合はスキップ
        .where(
          (s) => s.docs
              .where((element) => element.data().fieldValuePending)
              .isEmpty,
        )
        .map(
          (snap) => snap.docs.map((e) => e.data().toDomainModel()).firstOrNull,
        );
  }

  @override
  Future<void> addColoredWordResult({
    required String userId,
    required int score,
    required ResultRank rank,
    required int correct,
    required int questions,
    required double correctRate,
    required DateTime doneAt,
  }) async {
    // 結果の設定
    final docRef = ref.read(coloredWordResultCollectionProvider(userId)).doc();
    final trainingResult = FirestoreColoredWordResultModel(
      id: docRef.id,
      score: score,
      rank: rank,
      correct: correct,
      questions: questions,
      correctRate: correctRate,
    );

    // サマリの設定
    final summary = await fetchDailySummary(userId: userId, date: doneAt).first;
    final summaryRef = summary == null
        ? ref.read(trainingDailySummaryCollectionProvider(userId)).doc()
        : ref.read(
            trainingDailySummaryDocumentRefProvider(
              userId: userId,
              docId: summary.id,
            ),
          );
    final summaryParam = FirestoreTrainingDailySummaryModel(
      id: summaryRef.id,
      coloredWordScore: score,
      themeShiritoriScore: summary?.themeShiritoriScore,
      addMinusScore: summary?.addMinusScore,
      // その他の項目は`withConverter`で共通設定
    );

    // 登録
    return ref.read(firestoreProvider).runTransaction((transaction) async {
      transaction.set(docRef, trainingResult).set(summaryRef, summaryParam);
    });
  }
}