import 'package:brain_training/gen/assets.gen.dart';
import 'package:just_audio/just_audio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'correct_sound_player_provider.g.dart';

@Riverpod(keepAlive: true)
Future<AudioPlayer> correctSoundPlayer(CorrectSoundPlayerRef ref) async {
  final player = AudioPlayer();
  await player.setAsset(Assets.sounds.quizCorrect);
  return player;
}
