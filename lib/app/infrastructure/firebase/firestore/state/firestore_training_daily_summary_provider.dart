import 'package:brain_training/app/infrastructure/firebase/firestore/extension/collection_reference.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constants/columns.dart';
import '../model/firestore_training_daily_summary_model.dart';
import 'firestore.dart';

part 'firestore_training_daily_summary_provider.g.dart';

/// 日別サマリーコレクションの参照
@riverpod
CollectionReference<FirestoreTrainingDailySummaryModel>
    trainingDailySummaryCollection(
  TrainingDailySummaryCollectionRef ref,
  String userId,
) {
  return ref
      .watch(firestoreProvider)
      .trainingDailySummaryRef(userId)
      .withConverter(
        fromFirestore: (snapshot, options) =>
            FirestoreTrainingDailySummaryModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => {
          ...value.toJson(),

          // カウントは集計を更新時に集計行う
          'doneCount': [
            value.coloredWordScore,
            value.themeShiritoriScore,
            value.addMinusScore,
          ].whereNotNull().length,

          // 日付項目は自動更新
          if (value.doneAt == null) 'doneAt': FieldValue.serverTimestamp(),
          firestoreColumnUpdatedAt: FieldValue.serverTimestamp(),
          if (value.createdAt == null)
            firestoreColumnCreatedAt: FieldValue.serverTimestamp(),
        },
      );
}

/// 日別サマリードキュメントの参照
@riverpod
DocumentReference<FirestoreTrainingDailySummaryModel>
    trainingDailySummaryDocumentRef(
  TrainingDailySummaryDocumentRefRef ref, {
  required String userId,
  required String docId,
}) =>
        ref.watch(trainingDailySummaryCollectionProvider(userId)).doc(userId);
