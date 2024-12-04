// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardImpl _$$CardImplFromJson(Map<String, dynamic> json) => _$CardImpl(
      value: (json['value'] as num).toInt(),
      type: $enumDecode(_$CardTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$CardImplToJson(_$CardImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'type': _$CardTypeEnumMap[instance.type]!,
    };

const _$CardTypeEnumMap = {
  CardType.clubs: 'clubs',
  CardType.diamonds: 'diamonds',
  CardType.hearts: 'hearts',
  CardType.spades: 'spades',
};
