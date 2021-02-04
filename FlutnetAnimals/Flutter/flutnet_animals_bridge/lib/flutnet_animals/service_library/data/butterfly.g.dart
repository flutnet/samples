// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'butterfly.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Butterfly _$ButterflyFromJson(Map json) {
  return Butterfly(
    antennaLenght: (json['AntennaLenght'] as num).toDouble(),
    name: json['Name'] as String,
    birthday: const DateTimeConverter().fromJsonDynamic(json['Birthday']),
    image: const Uint8Converter().fromJsonDynamic(json['Image']),
    weight: (json['weight'] as num).toDouble(),
    height: (json['height'] as num).toDouble(),
  );
}

Map<String, dynamic> _$ButterflyToJson(Butterfly instance) => <String, dynamic>{
      'Name': instance.name,
      'Birthday': const DateTimeConverter().toJsonDynamic(instance.birthday),
      'Image': const Uint8Converter().toJsonDynamic(instance.image),
      'weight': instance.weight,
      'height': instance.height,
      'AntennaLenght': instance.antennaLenght,
    };
