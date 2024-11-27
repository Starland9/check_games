import 'package:check_games/src/checkgames.dart';
import 'package:check_games/src/components/card.dart';
import 'package:check_games/src/components/hand.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';

class Deck extends PositionComponent with HasGameRef<Checkgames>, TapCallbacks {
  Deck({required this.cards}) {
    size = CardComponent.assetOneSize;
  }

  final List<CardComponent> cards;
  bool inSharing = false;

  @override
  void onLoad() async {
    priority = 10;
    _initPosition();
    _rearangeCards();

    shareAtCenter();
    super.onLoad();
  }

  @override
  void onTapDown(TapDownEvent event) async {
    if (inSharing) return;
    shareToHand(game.currentHand);
    game.toggleHand();
    super.onTapDown(event);
  }

  void addCard(CardComponent card) {
    cards.add(card);
    card.position = position;
    card.container = CardContainer.deck;
    card.toggleBack(true);
  }

  void removeCard(CardComponent card) {
    card.priority = 0;
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

  Future<void> shareAtCenter() async {
    inSharing = true;
    removeCard(card);
    game.board.addCard(card);
    await card.shareTo(game.board.position);
    inSharing = false;
  }

  Future<void> shareToHand(Hand hand) async {
    inSharing = true;
    removeCard(card);
    await card.shareToHand(hand);
    hand.addCard(card);
    inSharing = false;
    if (cards.length == 1) {
      game.board.refillDeck();
    }
  }

  CardComponent get card => cards.first;
}
