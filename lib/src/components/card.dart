import 'package:check_games/src/checkgames.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';

enum CardColor { red, black }

enum CardType { clubs, diamonds, hearts, spades }

class CardComponent extends SpriteComponent
    with HasGameRef<Checkgames>, DragCallbacks {
  final CardType type;
  final int value;

  CardComponent({
    required this.type,
    required this.value,
  });

  Vector2 get assetSheetSize => isBack ? Vector2(176, 124) : Vector2(440, 372);
  static Vector2 assetSheetPosition = Vector2(0, 0);
  static Vector2 assetOneSize = Vector2(88, 124);
  int get assetsPerRow => isBack ? 2 : 5;
  int get assetsTotal => isBack ? 2 : 13;

  bool isBack = true;
  bool played = false;
  bool inDrag = false;

  @override
  Future<void> onLoad() async {
    await _loadImages();
    return super.onLoad();
  }

  @override
  void onDragStart(DragStartEvent event) {
    inDrag = true;
    super.onDragStart(event);
  }

  @override
  void onDragEnd(DragEndEvent event) {
    inDrag = false;
    super.onDragEnd(event);
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    if (!inDrag) return;
    position.x = event.canvasStartPosition.x - event.delta.x;
    position.y = event.canvasStartPosition.y;
    print("drag");
    super.onDragUpdate(event);
  }

  Future<void> _loadImages() async {
    final path = isBack ? 'cards/back.png' : 'cards/$typeString.png';
    sprite = await Sprite.load(
      path,
      srcPosition: Vector2(
        (value - 1) % assetsPerRow * assetOneSize.x,
        (value - 1) ~/ assetsPerRow * assetOneSize.y,
      ),
      srcSize: assetOneSize,
    );
  }

  Future<void> toggleBack([bool? force]) async {
    isBack = force ?? !isBack;
    await _loadImages();
  }

  CardColor get color => type == CardType.clubs || type == CardType.spades
      ? CardColor.black
      : CardColor.red;

  String get typeString => type.toString().split('.').last;
}
