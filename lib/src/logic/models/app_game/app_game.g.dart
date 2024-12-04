// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppGameImpl _$$AppGameImplFromJson(Map<String, dynamic> json) =>
    _$AppGameImpl(
      id: json['id'] as String,
      players:
          (json['players'] as List<dynamic>).map((e) => e as String).toList(),
      hostId: json['hostId'] as String,
      cards: (json['cards'] as List<dynamic>)
          .map((e) => Card.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      endAt: _$JsonConverterFromJson<Timestamp, Timestamp>(
          json['endAt'], const TimestampConverter().fromJson),
      winnerId: json['winnerId'] as String?,
    );

Map<String, dynamic> _$$AppGameImplToJson(_$AppGameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'players': instance.players,
      'hostId': instance.hostId,
      'cards': instance.cards,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'endAt': _$JsonConverterToJson<Timestamp, Timestamp>(
          instance.endAt, const TimestampConverter().toJson),
      'winnerId': instance.winnerId,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
