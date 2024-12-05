import 'dart:async';
import 'dart:math';

import 'package:check_games/src/logic/extensions/users.dart';
import 'package:check_games/src/logic/models/app_game/app_game.dart';
import 'package:check_games/src/logic/models/app_user/app_user.dart';
import 'package:check_games/src/logic/models/rules.dart';
import 'package:check_games/src/screens/game/components/board.dart';
import 'package:check_games/src/screens/game/components/card.dart';
import 'package:check_games/src/screens/game/components/deck.dart';
import 'package:check_games/src/screens/game/components/hand.dart';
import 'package:check_games/src/utils/dialog_utils.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart' hide Card;

class Checkgames extends FlameGame with TapDetector {
  final BuildContext context;
  final VoidCallback? onRestart;
  final VoidCallback? onQuit;
  final Rules? rules;
  final AppGame game;
  final List<AppUser> users;

  Checkgames({
    required this.context,
    this.onRestart,
    this.onQuit,
    this.rules,
    required this.game,
    required this.users,
  });

  @override
  Color backgroundColor() => Colors.transparent;

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
    for (var i = 0; i < (rules?.startCardsCount ?? 4) * 2; i++) {
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
    for (var card in game.cards) {
      cards.add(CardComponent(card: card));
    }

    cards.shuffle(Random(game.createdAt.millisecondsSinceEpoch));
    deck = Deck(cards: cards..reversed);
    await add(deck);
    await addAll(cards);
  }

  _initHands() async {
    topHand = Hand(
      player: users.last,
      position: Vector2(0, 10),
    );

    bottomHand = Hand(
      player: users.first,
      position: Vector2(0, size.y - CardComponent.assetOneSize.y - 10),
    );

    await addAll([topHand, bottomHand]);
    currentHand = bottomHand;
  }

  Future<void> applyRule() async {
    if (gameStarted) await rules?.apply(currentHand, board.cards.last);
  }

  Future<void> playCard(CardComponent card) async {
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
    if (withCpu) {
      await applyRule();
      await cpuPlay();
    } else {
      await applyRule();
    }
  }

  bool _checkCard(CardComponent card) {
    return rules?.isCardsCompatible(card, board.currentCard) ?? true;
  }

  bool _checkHand(CardComponent card) {
    return card.hand == currentHand;
  }

  Future<void> gameOver() async {
    final response = await DialogUtils.showDoubleConfirmDialog(
      context: context,
      content: "Game Over !!!\n${currentHand.player.username} a gagné",
      confirmText: "Rejouer",
      cancelText: "Quitter",
    );

    if (response == true) {
      onRestart?.call();
    } else {
      onQuit?.call();
    }
  }

  Future<void> cpuPlay() async {
    if (currentHand.isCPU) {
      final playableCards = currentHand.cards.where(
        (card) {
          return rules?.isCardsCompatible(card, board.currentCard) ?? true;
        },
      ).toList();

      if (playableCards.isEmpty) {
        await deck.shareToHand(currentHand);
        if (users.isAllCpu) await applyRule();
      } else {
        final card = playableCards[0];
        await currentHand.shareAtCenter(card);
        await applyRule();
      }
    }

    toggleHand(bottomHand);
  }

  void toggleHand([Hand? forceHand]) {
    if (currentHand == topHand) {
      currentHand = bottomHand;
    } else {
      currentHand = topHand;
    }
    if (forceHand != null) {
      currentHand = forceHand;
    }
  }

  bool get withCpu => users.where((x) => x.username.contains("CPU")).isNotEmpty;
}
