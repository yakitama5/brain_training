# DB設計

## ✅技術選定

当アプリでは、`App Check`を利用した不正利用防止を最大限活用するため、`Cloud Firestore`を採用する

Firestoreのドキュメント構造は下記の通り

## 📁ドキュメント構造

### users/{userId}

ユーザー情報を保持するコレクション

`userId`は`Firebase Authentication`で認証した `uid`と同一の値を利用

| Field        | Type          | Description          | Sample              |
| ------------ | ------------- | -------------------- | ------------------- |
| id           | string        | サロゲートキー(UUID) | XXXX (UUID)         |
| createdAt    | Timestmap     | 作成日時             | 1987-12-01 00:00:00 |
| updatedAt    | Timestmap     | 更新日時             | 1987-12-01 00:00:00 |

### _dusers/{userId}

削除(退会)したユーザー情報を保持するコレクション

`users`コレクションと**SameID構造**で、構成も完全に一致するため割愛

