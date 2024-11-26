import 'dart:async';
import 'dart:math';

import 'package:check_games/src/components/card.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class Checkgames extends FlameGame with TapDetector {
  @override
  Color backgroundColor() => const Color(0xff008080);

  late final PositionComponent topHand;
  late final PositionComponent bottomHand;
  late final Map<PositionComponent, int> handCount = {};
  late PositionComponent currentHand = topHand;

  final List<CardComponent> cards = [];

  @override
  FutureOr<void> onLoad() async {
    await images.loadAllImages();
    await _fillCards();
    await _initHands();

    _shareForAll();

    super.onLoad();
  }

  @override
  void onRemove() {
    images.clearCache();
    super.onRemove();
  }

  Future<void> _fillCards() async {
    for (var i = 1; i <= 13; i++) {
      for (var type in CardType.values) {
        final card = CardComponent(
          value: i,
          type: type,
          onTap: _onCardTap,
        );
        card.position = deckPosition;
        cards.add(card);
      }
    }

    cards.shuffle();
    await addAll(cards);
  }

  Vector2 get deckPosition => Vector2(
        size.x - CardComponent.assetOneSize.x - 10,
        size.y / 2 - CardComponent.assetOneSize.y / 2,
      );

  Vector2 get centerPosition => Vector2(
        size.x / 2 - CardComponent.assetOneSize.x / 2,
        size.y / 2 - CardComponent.assetOneSize.y / 2,
      );

  // void _toggleHand() {
  //   if (currentHand == topHand) {
  //     currentHand = bottomHand;
  //   } else {
  //     currentHand = topHand;
  //   }
  // }

  _initHands() async {
    final handSize = Vector2(
      CardComponent.assetOneSize.x * 4,
      CardComponent.assetOneSize.y,
    );

    topHand = PositionComponent(
      position: Vector2(0, 10),
      size: handSize,
    );

    bottomHand = PositionComponent(
      position: Vector2(
        0,
        size.y - CardComponent.assetOneSize.y - 10,
      ),
      size: handSize,
    );

    await addAll([topHand, bottomHand]);
    handCount[topHand] = 0;
    handCount[bottomHand] = 0;
    currentHand = topHand;
  }

  Future<CardComponent> _shareCardTo(
    CardComponent card,
    Vector2 dest, [
    bool closed = false,
    double speed = 0.2,
  ]) async {
    final effect = MoveToEffect(
      dest,
      LinearEffectController(speed),
    )..removeOnFinish = true;
    final rotationEffect = RotateEffect.to(
      -pi * 4,
      LinearEffectController(speed),
    )..removeOnFinish = true;

    card.priority += 1;
    card.add(rotationEffect);
    card.add(effect);
    await card.toggleBack(closed);
    await effect.completed;
    await rotationEffect.completed;
    card.played = true;
    return card;
  }

  _shareToHand(PositionComponent hand) async {
    final count = handCount[hand] ?? 0;
    final goodScale = Vector2.all(0.5);

    final goodPosition = Vector2(
        (CardComponent.assetOneSize.x * count * goodScale.x) % hand.size.x,
        hand.position.y +
            (count ~/ 8 * CardComponent.assetOneSize.y * goodScale.y));

    await _shareCardTo(lastCard..scale = goodScale, goodPosition);
    handCount.update(hand, (value) => value + 1, ifAbsent: () => 1);
  }

  _shareForAll() async {
    await _shareCardTo(lastCard, centerPosition);
    for (var i = 0; i < 20; i++) {
      for (var hand in [topHand, bottomHand]) {
        await _shareToHand(hand);
      }
    }
  }

  List<CardComponent> get deckCards =>
      cards.where((card) => !card.played).toList();

  CardComponent get lastCard => deckCards.first;

  _onCardTap(CardComponent card) {
    final scaleEffect = ScaleEffect.to(
      Vector2.all(1),
      LinearEffectController(0.2),
    );
    card.add(scaleEffect);
    card.priority += 4;
    _shareCardTo(card, centerPosition);
  }
}
