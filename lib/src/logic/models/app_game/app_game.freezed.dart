// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppGame _$AppGameFromJson(Map<String, dynamic> json) {
  return _AppGame.fromJson(json);
}

/// @nodoc
mixin _$AppGame {
  String get id => throw _privateConstructorUsedError;
  List<String> get players => throw _privateConstructorUsedError;
  String get hostId => throw _privateConstructorUsedError;
  List<Card> get cards => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp? get endAt => throw _privateConstructorUsedError;
  String? get winnerId => throw _privateConstructorUsedError;

  /// Serializes this AppGame to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppGame
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppGameCopyWith<AppGame> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppGameCopyWith<$Res> {
  factory $AppGameCopyWith(AppGame value, $Res Function(AppGame) then) =
      _$AppGameCopyWithImpl<$Res, AppGame>;
  @useResult
  $Res call(
      {String id,
      List<String> players,
      String hostId,
      List<Card> cards,
      @TimestampConverter() Timestamp createdAt,
      @TimestampConverter() Timestamp? endAt,
      String? winnerId});
}

/// @nodoc
class _$AppGameCopyWithImpl<$Res, $Val extends AppGame>
    implements $AppGameCopyWith<$Res> {
  _$AppGameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppGame
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? players = null,
    Object? hostId = null,
    Object? cards = null,
    Object? createdAt = null,
    Object? endAt = freezed,
    Object? winnerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hostId: null == hostId
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      winnerId: freezed == winnerId
          ? _value.winnerId
          : winnerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppGameImplCopyWith<$Res> implements $AppGameCopyWith<$Res> {
  factory _$$AppGameImplCopyWith(
          _$AppGameImpl value, $Res Function(_$AppGameImpl) then) =
      __$$AppGameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<String> players,
      String hostId,
      List<Card> cards,
      @TimestampConverter() Timestamp createdAt,
      @TimestampConverter() Timestamp? endAt,
      String? winnerId});
}

/// @nodoc
class __$$AppGameImplCopyWithImpl<$Res>
    extends _$AppGameCopyWithImpl<$Res, _$AppGameImpl>
    implements _$$AppGameImplCopyWith<$Res> {
  __$$AppGameImplCopyWithImpl(
      _$AppGameImpl _value, $Res Function(_$AppGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppGame
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? players = null,
    Object? hostId = null,
    Object? cards = null,
    Object? createdAt = null,
    Object? endAt = freezed,
    Object? winnerId = freezed,
  }) {
    return _then(_$AppGameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hostId: null == hostId
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      winnerId: freezed == winnerId
          ? _value.winnerId
          : winnerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppGameImpl implements _AppGame {
  _$AppGameImpl(
      {required this.id,
      required final List<String> players,
      required this.hostId,
      required final List<Card> cards,
      @TimestampConverter() required this.createdAt,
      @TimestampConverter() this.endAt,
      this.winnerId})
      : _players = players,
        _cards = cards;

  factory _$AppGameImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppGameImplFromJson(json);

  @override
  final String id;
  final List<String> _players;
  @override
  List<String> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  final String hostId;
  final List<Card> _cards;
  @override
  List<Card> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  @TimestampConverter()
  final Timestamp createdAt;
  @override
  @TimestampConverter()
  final Timestamp? endAt;
  @override
  final String? winnerId;

  @override
  String toString() {
    return 'AppGame(id: $id, players: $players, hostId: $hostId, cards: $cards, createdAt: $createdAt, endAt: $endAt, winnerId: $winnerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppGameImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.hostId, hostId) || other.hostId == hostId) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.winnerId, winnerId) ||
                other.winnerId == winnerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_players),
      hostId,
      const DeepCollectionEquality().hash(_cards),
      createdAt,
      endAt,
      winnerId);

  /// Create a copy of AppGame
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppGameImplCopyWith<_$AppGameImpl> get copyWith =>
      __$$AppGameImplCopyWithImpl<_$AppGameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppGameImplToJson(
      this,
    );
  }
}

abstract class _AppGame implements AppGame {
  factory _AppGame(
      {required final String id,
      required final List<String> players,
      required final String hostId,
      required final List<Card> cards,
      @TimestampConverter() required final Timestamp createdAt,
      @TimestampConverter() final Timestamp? endAt,
      final String? winnerId}) = _$AppGameImpl;

  factory _AppGame.fromJson(Map<String, dynamic> json) = _$AppGameImpl.fromJson;

  @override
  String get id;
  @override
  List<String> get players;
  @override
  String get hostId;
  @override
  List<Card> get cards;
  @override
  @TimestampConverter()
  Timestamp get createdAt;
  @override
  @TimestampConverter()
  Timestamp? get endAt;
  @override
  String? get winnerId;

  /// Create a copy of AppGame
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppGameImplCopyWith<_$AppGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
