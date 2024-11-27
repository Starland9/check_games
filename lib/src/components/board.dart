import 'dart:async';

import 'package:check_games/src/checkgames.dart';
import 'package:check_games/src/components/card.dart';
import 'package:flame/components.dart';

class Board extends PositionComponent with HasGameRef<Checkgames> {
  final List<CardComponent> cards = [];

  @override
  FutureOr<void> onLoad() {
    position = Vector2(
      game.size.x / 2 - CardComponent.assetOneSize.x / 2,
      game.size.y / 2 - CardComponent.assetOneSize.y / 2,
    );
    return super.onLoad();
  }

  void addCard(CardComponent card) {
    cards.add(card);
    card.priority = cards.length;
    card.container = CardContainer.board;
  }

  void removeCard(CardComponent card) {
    cards.remove(card);
    card.priority = 0;
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
