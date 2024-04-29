import 'package:brain_training/app/application/model/app_sound_players.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_sound_players_provider.g.dart';

/// DI用
@riverpod
AppSoundPlayers appSoundPlayers(AppSoundPlayersRef ref) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();
