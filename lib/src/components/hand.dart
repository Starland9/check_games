import 'dart:async';

import 'package:check_games/src/checkgames.dart';
import 'package:check_games/src/components/card.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';

enum HandPositon { top, bottom }

class Hand extends PositionComponent
    with HasGameRef<Checkgames>, DragCallbacks {
  final List<CardComponent> cards = [];

  final String name;
  final HandPositon pos;

  Hand({
    super.position,
    required this.name,
    this.pos = HandPositon.top,
  });

  @override
  FutureOr<void> onLoad() {
    priority = 10;

    if (pos == HandPositon.top) {
      position = Vector2(0, 10);
    } else {
      position = Vector2(
        0,
        gameRef.size.y - CardComponent.assetOneSize.y - 10,
      );
    }
    size = Vector2(
      CardComponent.assetOneSize.x * 4,
      CardComponent.assetOneSize.y,
    );

    return super.onLoad();
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    position.x += event.canvasEndPosition.x - event.canvasStartPosition.x;
    super.onDragUpdate(event);
  }

  void addCard(CardComponent card) {
    cards.add(card);
  }
}
