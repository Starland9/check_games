part of 'cards_cubit.dart';

@freezed
class CardsState with _$CardsState {
  const factory CardsState.initial() = _Initial;
  const factory CardsState.loading() = _Loading;
  const factory CardsState.cardsLoaded(List<Card> cards) = _Loaded;
}
