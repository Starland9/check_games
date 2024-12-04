import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';
part 'card.g.dart';

enum CardColor { red, black }

enum CardType { clubs(), diamonds, hearts, spades }

enum CardContainer { hand, board, deck }

@freezed
class Card with _$Card {
  factory Card({
    required int value,
    required CardType type,
  }) = _Card;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}
