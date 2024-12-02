import 'package:check_games/src/screens/game/components/card.dart';
import 'package:check_games/src/screens/game/components/hand.dart';
import 'package:check_games/src/screens/game/checkgames.dart';
import 'package:flame/components.dart';

abstract class Rules extends Component with HasGameRef<Checkgames> {
  Future<void> apply(Hand player, CardComponent card) async {
    if (game.currentHand.cards.isEmpty && game.gameStarted) {
      await game.gameOver();
      return;
    }

    if (await multiShareToOtherPlayer(player, card)) {
      if (player.isCPU()) {
        await game.cpuPlay();
      }
      if (otherPlayer(player).isCPU()) {
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

  Hand otherPlayer(Hand player) =>
      player == game.topHand ? game.bottomHand : game.topHand;

  bool isCardsCompatible(CardComponent card1, CardComponent card2);

  Future<bool> multiShareToOtherPlayer(Hand player, CardComponent card) async {
    if (multiShareWithValueAndCount.containsKey(card.value)) {
      for (var i = 0; i < (multiShareWithValueAndCount[card.value] ?? 0); i++) {
        await gameRef.deck.shareToHand(otherPlayer(player));
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
