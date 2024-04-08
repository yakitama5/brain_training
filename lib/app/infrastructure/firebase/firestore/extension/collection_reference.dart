import 'package:cloud_firestore/cloud_firestore.dart';

/// Firestoreのコレクションを利用するための拡張
/// 複数定義することは無いが、コレクション名を一覧化するためにExtensionとして定義
extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference usersRef() => collection('users');
  CollectionReference dusersRef() => collection('_dusers');
  CollectionReference fcmTokensRef(String userId) =>
      usersRef().doc(userId).collection('fcmTokens');
  CollectionReference coloredWordResultsRef(String userId) =>
      usersRef().doc(userId).collection('coloredWordResults');
  CollectionReference trainingDailySummaryRef(String userId) =>
      usersRef().doc(userId).collection('trainingDailySummaries');
}
