// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_animals_bridge/flutnet_animals/service_library/services/generated/cmd_animal_service_get_animals.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cmd_animal_service_get_animals.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdAnimalServiceGetAnimals extends Object {

	CmdAnimalServiceGetAnimals();


	factory CmdAnimalServiceGetAnimals.fromJson(Map<dynamic, dynamic> json) => _$CmdAnimalServiceGetAnimalsFromJson(json);

	Map<String, dynamic> toJson() => _$CmdAnimalServiceGetAnimalsToJson(this);



}
