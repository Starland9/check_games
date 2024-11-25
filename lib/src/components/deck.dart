import 'dart:async';

import 'package:check_games/src/components/card.dart';
import 'package:check_games/src/components/hand.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

class DeckComponent extends PositionComponent with TapCallbacks {
  final List<CardComponent> cards;
  final VoidCallback? onEmpty;

  DeckComponent({
    this.onEmpty,
    required this.cards,
  });

  @override
  FutureOr<void> onLoad() {
    size = CardComponent.assetOneSize;

    return super.onLoad();
  }

  @override
  void onTapDown(TapDownEvent event) {
    print("tap");
    super.onTapDown(event);
  }

  Future<void> shareTo(Vector2 dest) async {
    if (cards.isEmpty) {
      onEmpty?.call();
      return;
    }

    last.played = true;
    last.position = dest;
  }

  Future<void> shareAndToggle(Vector2 dest) async {
    shareTo(dest);
    last.toggleBack(false);
  }

  Future<void> shareToHand(Hand hand) async {
    final goodPosition = Vector2(
      (hand.position.x + hand.cards.length) * CardComponent.assetOneSize.x,
      hand.position.y,
    );
    await shareAndToggle(goodPosition);
    hand.addCard(last);
  }

  CardComponent get last => cards.where((x) => !x.played).last;
}
