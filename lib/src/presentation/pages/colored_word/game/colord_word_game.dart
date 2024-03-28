import 'package:flame/components.dart';
import 'package:flame/game.dart';

class ColoredWordGame extends FlameGame {
  int seconds = 30;

  @override
  Future<void> onLoad() async {
    // await Flame.images.load('klondike-sprites.png');
    await add(
      TimerComponent(
        period: 1,
        repeat: true,
        onTick: () => seconds--,
      ),
    );
  }
}
