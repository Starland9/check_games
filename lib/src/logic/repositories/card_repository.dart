import 'package:check_games/src/logic/models/card/card.dart';

class CardRepository {
  List<Card> getInitialCards() {
    List<Card> cards = [];
    for (var i = 1; i <= 13; i++) {
      for (var type in CardType.values) {
        cards.add(Card(value: i, type: type));
      }
    }
    return cards;
  }
}
