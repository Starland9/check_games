import 'package:check_games/src/checkgames.dart';
import 'package:check_games/src/components/card.dart';
import 'package:check_games/src/components/hand.dart';
import 'package:check_games/src/screens/game_screen.dart';
import 'package:flame/components.dart';

abstract class Rules extends Component with HasGameRef<Checkgames> {
  Future<void> apply(Hand player, CardComponent card, GameScreen game) async {
    if (game.currentHand.cards.isEmpty && game.gameStarted) {
      await game.gameOver();
      return;
    }

    if (await multiShareToOtherPlayer(player, card, game)) {
      if (player.isCPU()) {
        await game.cpuPlay();
      }
      if (otherPlayer(player, game).isCPU()) {
        game.toggleHand(game.bottomHand);
        return;
      }
    }

    if (await stopOtherPlayer(player, card)) {
      if (player.isCPU()) {
        await game.cpuPlay();
      }
      return;
    }
    // return null;
    game.toggleHand();
  }

  Hand otherPlayer(Hand player, GameScreen game) =>
      player == game.topHand ? game.bottomHand : game.topHand;

  bool isCardsCompatible(CardComponent card1, CardComponent card2);

  Future<bool> multiShareToOtherPlayer(
      Hand player, CardComponent card, GameScreen game) async {
    if (multiShareWithValueAndCount.containsKey(card.value)) {
      for (var i = 0; i < (multiShareWithValueAndCount[card.value] ?? 0); i++) {
        await game.deck.shareToHand(otherPlayer(player, game), game.board);
      }
      return true;
    }
    return false;
  }

  Future<bool> stopOtherPlayer(Hand player, CardComponent card) async {
    return stopOtherPlayerValues.contains(card.value);
  }

  Map<int, int> get multiShareWithValueAndCount;

  List<int> get stopOtherPlayerValues;

  int get startCardsCount;
}
