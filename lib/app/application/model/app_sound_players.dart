import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';

part 'app_sound_players.freezed.dart';

@freezed
class AppSoundPlayers with _$AppSoundPlayers {
  const factory AppSoundPlayers({
    required AudioPlayer countdownCount,
    required AudioPlayer countdownFinish,
    required AudioPlayer quizCorrect,
    required AudioPlayer quizIncorrect,
    required AudioPlayer quizFinish,
  }) = _AppSoundPlayers;
}
