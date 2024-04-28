import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dynamic_color_supported_provider.g.dart';

/// DI用
@Riverpod(keepAlive: true)
bool dynamicColorSupported(DynamicColorSupportedRef ref) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();
