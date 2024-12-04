import 'package:check_games/src/logic/json_converters/timestamp_converter.dart';
import 'package:check_games/src/logic/models/card/card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_game.freezed.dart';
part 'app_game.g.dart';

@freezed
class AppGame with _$AppGame {
  factory AppGame({
    required String id,
    required List<String> players,
    required String hostId,
    required List<Card> cards,
    @TimestampConverter() required Timestamp createdAt,
    @TimestampConverter() Timestamp? endAt,
    String? winnerId,
  }) = _AppGame;

  factory AppGame.fromJson(Map<String, dynamic> json) =>
      _$AppGameFromJson(json);
}
