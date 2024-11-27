import 'dart:async';

import 'package:check_games/src/components/board.dart';
import 'package:check_games/src/components/card.dart';
import 'package:check_games/src/components/deck.dart';
import 'package:check_games/src/components/hand.dart';
import 'package:check_games/src/utils/dialog_utils.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class Checkgames extends FlameGame with TapDetector {
  final BuildContext context;
  final VoidCallback? onGameOver;

  Checkgames({
    required this.context,
    this.onGameOver,
  });

  @override
  Color backgroundColor() => const Color(0xff008080);

  late final Hand topHand;
  late final Hand bottomHand;
  late Hand currentHand = topHand;
  late final Deck deck;
  late final Board board;

  final List<CardComponent> cards = [];

  @override
  FutureOr<void> onLoad() async {
    await images.loadAllImages();
    await _initBoard();
    await _fillCards();
    await _initHands();

    _test();

    super.onLoad();
  }

  Future<void> _test() async {
    for (var i = 0; i < 8; i++) {
      await deck.shareToHand(currentHand);
      toggleHand();
    }
  }

  Future<void> _initBoard() async {
    board = Board();
    await add(board);
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
        );
        cards.add(card);
      }
    }

    cards.shuffle();
    deck = Deck(cards: cards);
    await add(deck);
    await addAll(cards);
  }

  _initHands() async {
    topHand = Hand(
      name: "Bot",
      position: Vector2(0, 10),
    );

    bottomHand = Hand(
      name: "Landry",
      position: Vector2(
        0,
        size.y - CardComponent.assetOneSize.y - 10,
      ),
    );

    await addAll([topHand, bottomHand]);
    currentHand = bottomHand;
  }

  void toggleHand() {
    currentHand = currentHand == topHand ? bottomHand : topHand;
  }

  void playCard(CardComponent card) async {
    final isGoodHand = _checkHand(card);
    if (!isGoodHand) {
      DialogUtils.showAlertDialog(
        context: context,
        content: "Ce n'est pas à toi de jouer !!!",
      );
      return;
    }

    final isGoodCard = _checkCard(card);
    if (!isGoodCard) {
      DialogUtils.showAlertDialog(
        context: context,
        content: "Cette carte n'est pas compatible avec la carte en jeu !!!",
      );
      return;
    }

    await currentHand.shareAtCenter(card);
    if (currentHand.cards.isEmpty) {
      _gameOver();
    }
    toggleHand();
  }

  bool _checkCard(CardComponent card) {
    return card.isCompatibleWith(board.currentCard);
  }

  bool _checkHand(CardComponent card) {
    return card.hand == currentHand;
  }

  void _gameOver() async {
    await DialogUtils.showAlertDialog(
      context: context,
      content: "Game Over !!!\n${currentHand.name} a gagné",
    );

    onGameOver?.call();
  }
}
