import 'dart:async';

import 'package:check_games/src/components/board.dart';
import 'package:check_games/src/components/card.dart';
import 'package:check_games/src/components/deck.dart';
import 'package:check_games/src/components/hand.dart';
import 'package:check_games/src/models/rules.dart';
import 'package:check_games/src/utils/dialog_utils.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class Checkgames extends FlameGame with TapDetector {
  final BuildContext context;
  final VoidCallback? onGameOver;
  final Rules? rules;

  Checkgames({
    required this.context,
    this.onGameOver,
    this.rules,
  });

  @override
  Color backgroundColor() => const Color(0xff008080);

  late final Hand topHand;
  late final Hand bottomHand;
  late Hand currentHand = topHand;
  late final Deck deck;
  late final Board board;

  final List<CardComponent> cards = [];
  bool gameStarted = false;

  @override
  FutureOr<void> onLoad() async {
    await images.loadAllImages();
    await _initBoard();
    await _fillCards();
    await _initHands();
    if (rules != null) await add(rules!);

    _test();

    super.onLoad();
  }

  Future<void> _test() async {
    for (var i = 0; i < 8; i++) {
      await deck.shareToHand(currentHand);
      currentHand = currentHand == topHand ? bottomHand : topHand;
    }
    gameStarted = true;
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
    deck = Deck(cards: cards..reversed);
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

  Future<void> toggleHand() async {
    if (gameStarted) await rules?.apply(currentHand, board.cards.last);

    if (currentHand.cards.isEmpty && gameStarted) {
      await _gameOver();
    }

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
    await cpuPlay();
  }

  bool _checkCard(CardComponent card) {
    return card.isCompatibleWith(board.currentCard);
  }

  bool _checkHand(CardComponent card) {
    return card.hand == currentHand;
  }

  Future<void> _gameOver() async {
    await DialogUtils.showAlertDialog(
      context: context,
      content: "Game Over !!!\n${currentHand.name} a gagné",
    );

    onGameOver?.call();
  }

  Future<void> cpuPlay() async {
    await toggleHand();
    final playableCards = topHand.cards.where((card) {
      return card.isCompatibleWith(board.currentCard);
    }).toList();

    if (playableCards.isEmpty) {
      await deck.shareToHand(topHand);
    } else {
      final card = playableCards[0];
      await topHand.shareAtCenter(card);
    }

    await toggleHand();
  }
}
