import 'package:check_games/src/checkgames.dart';
import 'package:check_games/src/components/card.dart';
import 'package:check_games/src/components/hand.dart';
import 'package:flame/components.dart';

class Rules extends Component with HasGameRef<Checkgames> {
  Future<void> apply(Hand player, CardComponent card) async {
    await _applyByValue(player, card);
  }

  Future<void> _applyByValue(Hand player, CardComponent card) async {
    print(card.value);
    switch (card.value) {
      case 7:
        print("yooo");
        final otherPlayer = player == gameRef.currentHand
            ? gameRef.bottomHand
            : gameRef.topHand;

        for (var i = 0; i < 8; i++) {
          await gameRef.deck.shareToHand(otherPlayer);
        }

        break;
      default:
    }
  }
}
