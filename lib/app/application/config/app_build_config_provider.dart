import 'package:brain_training/app/application/model/app_build_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/// DI前提利用
@riverpod
AppBuildConfig appBuildConfig(AppBuildConfigRef ref) =>
// アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();
