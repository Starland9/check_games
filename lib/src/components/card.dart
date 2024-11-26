import 'package:check_games/src/checkgames.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';

enum CardColor { red, black }

enum CardType { clubs, diamonds, hearts, spades }

class CardComponent extends SpriteComponent
    with
        HasGameRef<Checkgames>,
        DragCallbacks,
        DoubleTapCallbacks,
        TapCallbacks {
  final CardType type;
  final int value;
  final Function(CardComponent)? onTap;

  CardComponent({
    required this.type,
    required this.value,
    this.onTap,
  });

  Vector2 get assetSheetSize => isBack ? Vector2(176, 124) : Vector2(440, 372);
  static Vector2 assetSheetPosition = Vector2(0, 0);
  static Vector2 assetOneSize = Vector2(88, 124);
  int get assetsPerRow => isBack ? 2 : 5;
  int get assetsTotal => isBack ? 2 : 13;

  bool isBack = true;
  bool played = false;
  bool inDrag = false;
  Vector2 pointerPosition = Vector2.zero();

  @override
  Future<void> onLoad() async {
    await _loadImages();
    return super.onLoad();
  }

  // @override
  // void update(double dt) {
  //   _loadImages();
  //   super.update(dt);
  // }

  @override
  void onDragStart(DragStartEvent event) {
    inDrag = true;
    priority = 1;
    pointerPosition = position - event.canvasPosition;
    super.onDragStart(event);
  }

  @override
  void onDragEnd(DragEndEvent event) {
    priority = 0;
    inDrag = false;
    super.onDragEnd(event);
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    if (!inDrag) return;
    position = event.canvasStartPosition + pointerPosition;
    super.onDragUpdate(event);
  }

  @override
  void onDoubleTapDown(DoubleTapDownEvent event) {
    toggleBack();
    super.onDoubleTapDown(event);
  }

  @override
  void onTapDown(TapDownEvent event) {
    onTap?.call(this);
    super.onTapDown(event);
  }

  Future<void> _loadImages() async {
    if (isBack) {
      sprite = await Sprite.load(
        'cards/back.png',
        srcPosition: Vector2(color == CardColor.red ? 88 : 0, 0),
        srcSize: assetOneSize,
      );
      return;
    } else {
      sprite = await Sprite.load(
        'cards/$typeString.png',
        srcPosition: Vector2(
          (value - 1) % assetsPerRow * assetOneSize.x,
          (value - 1) ~/ assetsPerRow * assetOneSize.y,
        ),
        srcSize: assetOneSize,
      );
    }
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
