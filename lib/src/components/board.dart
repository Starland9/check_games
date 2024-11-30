import 'dart:async';

import 'package:check_games/src/checkgames.dart';
import 'package:check_games/src/components/card.dart';
import 'package:check_games/src/components/deck.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';

class Board extends PositionComponent
    with HasGameRef<Checkgames>, DoubleTapCallbacks {
  final List<CardComponent> cards = [];

  final Function(DoubleTapDownEvent) onDoubleTapD;

  Board({
    required this.onDoubleTapD,
  });

  @override
  FutureOr<void> onLoad() {
    priority = 100;
    position = Vector2(
      game.size.x / 2 - CardComponent.assetOneSize.x / 2,
      game.size.y / 2 - CardComponent.assetOneSize.y / 2,
    );
    return super.onLoad();
  }

  @override
  void onDoubleTapDown(DoubleTapDownEvent event) {
    onDoubleTapD(event);
    super.onDoubleTapDown(event);
  }

  void addCard(CardComponent card) {
    cards.add(card);
    card.toggleBack(false);
    card.container = CardContainer.board;
    _priorizeCards();
  }

  _priorizeCards() {
    for (var card in cards) {
      card.priority = cards.indexOf(card);
    }
  }

  void removeCard(CardComponent card) {
    cards.remove(card);
  }

  Future<void> refillDeck(Deck deck) async {
    final len = cards.length > 2 ? cards.length - 2 : 0;
    final cardsTaked = cards.take(len).toList();
    for (var card in cardsTaked) {
      deck.addCard(card);
      removeCard(card);
      await card.shareTo(deck.position, speed: 0.1);
      card.toggleBack(true);
    }
  }

  CardComponent get currentCard => cards.last;
}
