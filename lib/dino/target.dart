import 'package:flame/components.dart';
import 'package:flame/sprite.dart';
import 'helpers/directions.dart';

class Target extends SpriteComponent with HasGameRef {
  Target() : super(size: Vector2.all(200.0));

  late final SpriteAnimation _idleAnimation;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite('target.png');
    x = 200;
    y = 200;
  }
}
