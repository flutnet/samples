﻿// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elephant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Elephant _$ElephantFromJson(Map json) {
  return Elephant(
    trunkLenght: (json['TrunkLenght'] as num).toDouble(),
    name: json['Name'] as String,
    birthday: const DateTimeConverter().fromJsonDynamic(json['Birthday']),
    image: const Uint8Converter().fromJsonDynamic(json['Image']),
    weight: (json['weight'] as num).toDouble(),
    height: (json['height'] as num).toDouble(),
  );
}

Map<String, dynamic> _$ElephantToJson(Elephant instance) => <String, dynamic>{
      'Name': instance.name,
      'Birthday': const DateTimeConverter().toJsonDynamic(instance.birthday),
      'Image': const Uint8Converter().toJsonDynamic(instance.image),
      'weight': instance.weight,
      'height': instance.height,
      'TrunkLenght': instance.trunkLenght,
    };
