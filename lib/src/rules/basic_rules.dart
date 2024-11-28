import 'package:check_games/src/components/card.dart';
import 'package:check_games/src/models/rules.dart';

class BasicRules extends Rules {
  @override
  bool isCardsCompatible(CardComponent card1, CardComponent card2) {
    if (card1.value == 11) {
      return true;
    }

    return card1.color == card2.color &&
            card1.value == card2.value &&
            card1.type == card2.type ||
        card2.type == card1.type ||
        card2.value == card1.value;
  }

  @override
  Map<int, int> get multiShareWithValueAndCount => {
        7: 2,
      };

  @override
  List<int> get stopOtherPlayerValues => [1];

  @override
  int get startCardsCount => 4;
}
