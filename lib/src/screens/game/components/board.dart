import 'dart:async';

import 'package:check_games/src/screens/game/components/card.dart';
import 'package:check_games/src/screens/game/checkgames.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';

class Board extends PositionComponent
    with HasGameRef<Checkgames>, DoubleTapCallbacks {
  final List<CardComponent> cards = [];

  @override

  /// Sets the position of the board at the center of the screen.
  ///
  /// The final position is calculated by subtracting half of the size of the
  /// board asset from the center of the screen.
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
    refillDeck();
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

  Future<void> refillDeck() async {
    final len = cards.length > 2 ? cards.length - 2 : 0;
    final cardsTaked = cards.take(len).toList();
    for (var card in cardsTaked) {
      game.deck.addCard(card);
      game.board.removeCard(card);
      await card.shareTo(game.deck.position, speed: 0.1);
      card.toggleBack(true);
    }
  }

  CardComponent get currentCard => cards.last;
}
