import 'package:check_games/src/checkgames.dart';
import 'package:check_games/src/components/card.dart';
import 'package:flame/components.dart';

class Hand extends PositionComponent with HasGameRef<Checkgames> {
  final String name;
  Hand({
    required this.name,
    super.position,
  });

  List<CardComponent> cards = [];
  Vector2 _startPosition = Vector2.zero();
  bool inSharing = false;

  @override
  Future<void> onLoad() async {
    _startPosition = Vector2(x, y);
    await super.onLoad();
  }

  _rearangeCards() {
    int count = 0;
    int perRow = 10;
    double ySpace = 50;
    double xSpace = 30;

    if (!onTop) {
      position.y = _startPosition.y - (cards.length ~/ perRow) * ySpace;
    }

    for (double y = 0; y < 3; y++) {
      for (double x = 0; x < perRow; x++) {
        if (count >= cards.length) {
          break;
        }
        final card = cards[count];
        count++;

        if (onTop) {
          card.position = Vector2(
            x * xSpace,
            position.y + y * ySpace,
          );
        } else {
          card.position = Vector2(
            x * xSpace,
            position.y + ySpace * y,
          );
        }
      }
    }
  }

  void addCard(CardComponent card) {
    card.priority = cards.length;
    cards.add(card);
    card.hand = this;
    card.container = CardContainer.hand;
    _rearangeCards();
  }

  void removeCard(CardComponent card) {
    cards.remove(card);
    card.priority = 0;
    card.hand = null;
    _rearangeCards();
  }

  bool get onTop => position.y < game.board.position.y;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Hand && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;

  Future<void> shareAtCenter(CardComponent card) async {
    inSharing = true;
    removeCard(card);
    game.board.addCard(card);
    await card.shareTo(game.board.position);
    inSharing = false;
  }
}
