import 'package:brain_training/app/infrastructure/firebase/firestore/extension/collection_reference.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constants/columns.dart';
import '../model/firestore_colored_word_result_model.dart';
import 'firestore.dart';

part 'firestore_colored_word_result_provider.g.dart';

/// 色彩識別結果コレクションの参照
@riverpod
CollectionReference<FirestoreColoredWordResultModel>
    coloredWordResultCollection(
  ColoredWordResultCollectionRef ref,
  String userId,
) {
  return ref
      .watch(firestoreProvider)
      .coloredWordResultsRef(userId)
      .withConverter(
        fromFirestore: (snapshot, options) =>
            FirestoreColoredWordResultModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => {
          ...value.toJson(),

          // 日付項目は自動更新
          if (value.doneAt == null) 'doneAt': FieldValue.serverTimestamp(),
          firestoreColumnUpdatedAt: FieldValue.serverTimestamp(),
          if (value.createdAt == null)
            firestoreColumnCreatedAt: FieldValue.serverTimestamp(),
        },
      );
}

/// 色彩識別結果ドキュメントの参照
@riverpod
DocumentReference<FirestoreColoredWordResultModel> coloredWordResultDocumentRef(
  ColoredWordResultDocumentRefRef ref, {
  required String userId,
  required String docId,
}) =>
    ref.watch(coloredWordResultCollectionProvider(userId)).doc(userId);
