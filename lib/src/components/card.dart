import 'dart:math';

import 'package:check_games/src/checkgames.dart';
import 'package:check_games/src/components/hand.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/events.dart';
import 'package:flame_audio/flame_audio.dart';

enum CardColor { red, black }

enum CardType { clubs, diamonds, hearts, spades }

enum CardContainer { hand, board, deck }

class CardComponent extends SpriteComponent
    with HasGameRef<Checkgames>, TapCallbacks {
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
  Vector2 pointerPosition = Vector2.zero();
  CardContainer container = CardContainer.deck;
  Hand? hand;

  @override
  Future<void> onLoad() async {
    await _loadImages();
    return super.onLoad();
  }

  @override
  void onTapDown(TapDownEvent event) async {
    switch (container) {
      case CardContainer.hand:
        game.playCard(this);
        break;
      default:
    }
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

  Future<void> shareTo(
    Vector2 dest, {
    bool closed = false,
    double speed = 0.5,
    bool withSound = true,
  }) async {
    final effect = MoveToEffect(
      dest,
      LinearEffectController(speed),
    )..removeOnFinish = true;
    final rotationEffect = RotateEffect.to(
      -pi * 2,
      LinearEffectController(speed),
    )..removeOnFinish = true;

    if (withSound) FlameAudio.play('sfx/card_share.mp3');

    add(rotationEffect);
    add(effect);
    await effect.completed;
    await rotationEffect.completed;
    played = true;
  }

  Future<void> shareToHand(Hand hand) async {
    await shareTo(hand.position);
  }

  bool isCompatibleWith(CardComponent other) {
    return color == other.color && value == other.value && other.type == type ||
        other.type == type ||
        other.value == value;
  }
}
