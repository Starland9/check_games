import 'package:check_games/src/logic/models/app_game/app_game.dart';
import 'package:check_games/src/logic/repositories/card_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GameRepository {
  final _firestore = FirebaseFirestore.instance;

  late final CardRepository _cardRepository;

  GameRepository({required CardRepository cardRepository}) {
    _cardRepository = cardRepository;
  }

  final CollectionReference<AppGame> _games =
      FirebaseFirestore.instance.collection('games').withConverter<AppGame>(
            fromFirestore: (snapshot, _) => AppGame.fromJson(snapshot.data()!),
            toFirestore: (game, _) => game.toJson(),
          );

  Future<void> createGame(AppGame game) async {
    await _games.add(game);
  }

  Future<void> setGameWinner({
    required String gameId,
    required String userId,
  }) async {
    await _games.doc(gameId).update(
      {'winnerId': userId, "endAt": Timestamp.now()},
    );
  }
}
