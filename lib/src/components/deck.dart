import 'package:check_games/src/checkgames.dart';
import 'package:check_games/src/components/board.dart';
import 'package:check_games/src/components/card.dart';
import 'package:check_games/src/components/hand.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';

class Deck extends PositionComponent with HasGameRef<Checkgames>, TapCallbacks {
  Deck({
    required this.cards,
    required this.onTapD,
  }) {
    size = CardComponent.assetOneSize;
  }

  final Function onTapD;
  final List<CardComponent> cards;
  bool inSharing = false;

  @override
  void onLoad() async {
    priority = 100;
    _initPosition();
    _rearangeCards();

    super.onLoad();
  }

  @override
  void onTapDown(TapDownEvent event) async {
    if (inSharing) return;
    onTapD();

    super.onTapDown(event);
  }

  void addCard(CardComponent card) {
    cards.add(card);
    card.position = position;
    card.container = CardContainer.deck;
    card.toggleBack(true);
  }

  void removeCard(CardComponent card) {
    cards.remove(card);
  }

  void _initPosition() {
    position = Vector2(
      game.size.x - CardComponent.assetOneSize.x - 10,
      game.size.y / 2 - CardComponent.assetOneSize.y / 2,
    );
  }

  void _rearangeCards() {
    for (var card in cards) {
      card.position = position..x += card.value == 2 ? 3 : 0;
    }
  }

  Future<void> shareAtCenter(Board board) async {
    inSharing = true;
    removeCard(card);
    board.addCard(card);
    await card.shareTo(board.position);
    inSharing = false;
  }

  Future<void> shareToHand(Hand hand, Board board) async {
    inSharing = true;
    removeCard(card);
    await card.shareToHand(hand);
    hand.addCard(card);
    inSharing = false;
    if (cards.length == 1) {
      board.refillDeck(this);
    }
  }

  CardComponent get card {
    return cards.first;
  }
}
