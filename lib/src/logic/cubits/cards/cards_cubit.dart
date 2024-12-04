import 'package:bloc/bloc.dart';
import 'package:check_games/src/logic/models/card/card.dart';
import 'package:check_games/src/logic/repositories/card_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cards_cubit.freezed.dart';
part 'cards_state.dart';

class CardsCubit extends Cubit<CardsState> {
  late final CardRepository _cardRepository;

  CardsCubit(CardRepository cardRepository)
      : _cardRepository = cardRepository,
        super(const CardsState.initial());

  Future<void> init() async {
    emit(const CardsState.loading());
    final cards = _cardRepository.getInitialCards();
    emit(CardsState.cardsLoaded(cards));
  }

  List<Card> getInitialCards() => _cardRepository.getInitialCards();
}
