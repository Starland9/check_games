import 'dart:async';

import 'package:check_games/src/components/card.dart';
import 'package:check_games/src/components/deck.dart';
import 'package:check_games/src/components/hand.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class Checkgames extends FlameGame with TapDetector {
  @override
  Color backgroundColor() => const Color(0xff008080);

  late final DeckComponent deck;
  late final topHand = Hand(
    name: 'top',
    pos: HandPositon.top,
  );
  late final bottomHand = Hand(
    name: 'bottom',
    pos: HandPositon.bottom,
  );

  late Hand currentHand = topHand;

  @override
  FutureOr<void> onLoad() async {
    await images.loadAllImages();
    await _fillCards();
    await addAll([topHand, bottomHand]);

    deck.shareAndToggle(centerPosition);
    for (var i = 0; i < 8; i++) {
      deck.shareToHand(currentHand);
      _toggleHand();
      await Future.delayed(const Duration(milliseconds: 1));
    }

    super.onLoad();
  }

  @override
  void onRemove() {
    images.clearCache();
    super.onRemove();
  }

  Future<void> _fillCards() async {
    final cards = <CardComponent>[];

    for (var i = 1; i <= 13; i++) {
      for (var type in CardType.values) {
        final card = CardComponent(value: i, type: type);
        card.position = deckPosition;
        cards.add(card);
      }
    }

    cards.shuffle();
    await addAll(cards);
    deck = DeckComponent(cards: cards);
    deck.position = deckPosition;
    await add(deck);
  }

  Vector2 get deckPosition => Vector2(
        size.x - CardComponent.assetOneSize.x - 10,
        size.y / 2 - CardComponent.assetOneSize.y / 2,
      );

  Vector2 get centerPosition => Vector2(
        size.x / 2 - CardComponent.assetOneSize.x / 2,
        size.y / 2 - CardComponent.assetOneSize.y / 2,
      );

  void _toggleHand() {
    if (currentHand == topHand) {
      currentHand = bottomHand;
    } else {
      currentHand = topHand;
    }
  }
}
