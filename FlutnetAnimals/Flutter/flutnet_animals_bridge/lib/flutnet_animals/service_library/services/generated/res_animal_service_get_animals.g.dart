// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_animal_service_get_animals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResAnimalServiceGetAnimals _$ResAnimalServiceGetAnimalsFromJson(Map json) {
  return ResAnimalServiceGetAnimals(
    returnValue: (json['ReturnValue'] as List)
        ?.map((e) => e == null ? null : Animal.fromJsonDynamic(e as Map))
        ?.toList(),
  );
}

Map<String, dynamic> _$ResAnimalServiceGetAnimalsToJson(
        ResAnimalServiceGetAnimals instance) =>
    <String, dynamic>{
      'ReturnValue': instance.returnValue?.map((e) => e?.toJsonDynamic())?.toList(),
    };
