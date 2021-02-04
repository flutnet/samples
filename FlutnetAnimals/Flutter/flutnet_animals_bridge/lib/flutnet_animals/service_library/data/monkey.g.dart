// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monkey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Monkey _$MonkeyFromJson(Map json) {
  return Monkey(
    qILevel: json['QILevel'] as int,
    name: json['Name'] as String,
    birthday: const DateTimeConverter().fromJsonDynamic(json['Birthday']),
    image: const Uint8Converter().fromJsonDynamic(json['Image']),
    weight: (json['weight'] as num).toDouble(),
    height: (json['height'] as num).toDouble(),
  );
}

Map<String, dynamic> _$MonkeyToJson(Monkey instance) => <String, dynamic>{
      'Name': instance.name,
      'Birthday': const DateTimeConverter().toJsonDynamic(instance.birthday),
      'Image': const Uint8Converter().toJsonDynamic(instance.image),
      'weight': instance.weight,
      'height': instance.height,
      'QILevel': instance.qILevel,
    };
