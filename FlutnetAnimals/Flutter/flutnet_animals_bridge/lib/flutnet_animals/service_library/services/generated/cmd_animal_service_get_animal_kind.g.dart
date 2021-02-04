// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cmd_animal_service_get_animal_kind.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CmdAnimalServiceGetAnimalKind _$CmdAnimalServiceGetAnimalKindFromJson(
    Map json) {
  return CmdAnimalServiceGetAnimalKind(
    animal:
        json['Animal'] == null ? null : Animal.fromJsonDynamic(json['Animal'] as Map),
  );
}

Map<String, dynamic> _$CmdAnimalServiceGetAnimalKindToJson(
        CmdAnimalServiceGetAnimalKind instance) =>
    <String, dynamic>{
      'Animal': instance.animal?.toJsonDynamic(),
    };
