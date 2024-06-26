// ファイル内に定義しているプロパティはすべて `--dart-define` で指定する想定

/// アプリの実行環境
const dartDefineKeyFlavor = 'flavor';

/// アプリ名
const dartDefineKeyAppName = 'appName';

/// Android番のパッケージ名
/// DynamicLinksで全プラットフォームで利用するため定義
const dartDefineKeyAndroidPackageName = 'androidPackageName';

/// Android番のパッケージ名
/// DynamicLinksで全プラットフォームで利用するため定義
const dartDefineKeyIosBundleId = 'iosBundleId';
